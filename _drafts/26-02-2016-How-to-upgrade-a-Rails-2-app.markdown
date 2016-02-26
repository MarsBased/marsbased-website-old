---
layout: post
title:  "How to upgrade a Rails 2 app (part 1)"
date:   2016-02-26 15:00:00
author: david
categories: MarsBased Coding Development Rails RubyOnRails Upgrade
---

*Captain's log, stardate {{page.date | martian_date}}*

Mantener desactualizada una aplicación, aunque funcione correctamente, no es una buena idea. Puede conllevar graves problemas de seguridad, de rendimiento, de mantenimiento de código y privarnos de mejoras y facilidades que incluyen nuevas versiones.

Si se han aplicado actualizaciones de manera periódica no resulta un gran problema, sin embargo, si no se ha realizado, esta tarea se convierte en un gran reto.

<!--more-->

Para definir la estrategia y pasos a seguir, deberemos analizar específicamente cada proyecto, sus requerimientos y sus dependencias. En nuestro caso, podemos encontrar las siguientes particularidades:

- Ruby 1.8.7, (2012).
- Rails 2.3.18, (2013).
- Basado en una plataforma open source que actualmente carece de mantenimiento. Se integra en la aplicación mediante varios submódulos git.
- Muchas sobreescrituras realizadas en la carpeta /lib sobre submódulos de vendor/.
- Abuso de alias method chain y metaprogramación: dificulta el tracking del flujo de datos y la corrección de bugs.
- Gemas desactualizadas debido a las versiones de Ruby y Rails.

Todo ello genera múltiples problemas:

- El autoreload de la aplicación no funciona, debido a las múltiples sobreescrituras bajo lib/.
- El rendimiento de la aplicación no es el adecuado.
- Dificultades para encontrar documentación de estas versiones.
- Complejidad en mantenimiento y creación de nuevas features.
- Compatibilidad con gemas.

En que se beneficiará la aplicación tras ser actualizada a una nueva versión de Ruby y Ruby on Rails?

- Todos los problemas anteriores serán subsanados.
- Mayor seguridad.
- Velocidad de ejecución y nuevos métodos que proporciona Ruby en versiones superiores.
- Las nuevas versiones de Ruby on Rails incorporan Asset Pipeline, Active Model y Active Record más friendly, entre otras muchas mejoras.
- Felicidad para el programador.

##Planificación##

Nuestro primer objetivo será migrar de Ruby 1.8.7 a Ruby 1.9.3 sin actualizar versión de Ruby on Rails.

Dado que requerirá cambios de código, primeramente trataremos de simplificar y reorganizar el código ubicado en lib/ y vendor/:

- Eliminar toda la metaprogramación innecesaria.
- Migrar el código a Concerns: para ello añadiremos el módulo <a href="https://raw.githubusercontent.com/rails/rails/d06e42518a4fdd1732f1d75a43c69071bcd79245/activesupport/lib/active_support/concern.rb" title="concern.rb" target="_blank">concern.rb</a> de Ruby on Rails actual, uniremos y moveremos las sobreescrituras y extensiones a ficheros bajo concerns/, utilizando la misma estructura que se utiliza hoy en día:

{% highlight ruby %}

module UserPlugin::Concerns::Models::User
  extend ActiveSupport::Concern

  included do
    relations_validations_etc
  end

  def instance_method
  end

  module ClassMethods
    def class_method
    end
  end
end

{% endhighlight %}

Y realizar el include en nuestro modelo bajo app/models:

{% highlight ruby %}

class User < ActiveRecord::Base
  include UserPlugin::Concerns::Models::User
end

{% endhighlight %}

- Es importante dividir este paso en pequeñas entregas e ir integrándolo en la aplicación para no crear una versión demasiado compleja y dificultar la detección/resolución de posibles errores.
- No hay que tratar de optimizar el código ni <a href="https://marsbased.com/blog/2015/10/05/Code-Refactoring-When-Why-And-Who/" title="code refactor">refactorizar</a>, en este primer paso nuestro único objetivo es reubicar el código, de otra manera es fácil introducir nuevos bugs.

Tras este paso, será el momento de actualizar nuestro .ruby-version a Ruby a 1.9.3
