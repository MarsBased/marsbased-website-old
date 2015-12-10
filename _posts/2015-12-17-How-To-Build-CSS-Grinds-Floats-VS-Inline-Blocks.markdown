---
layout: post
title:  "How to build CSS grids: floats VS inline blocks"
date:   2015-12-17 15:00:00
author: pedro
categories: Frontend Webdesign MarsBased
---

*Captain's log, stardate {{page.date | martian_date}}*

When you're building anything in CSS (an header, a form, a grid) the first thing you need to consider is how elements will react with each other, that's how the flow of the document works: you put elements next to each other and you tell them how to behave. Some properties you attach to an element have influence on the elements beside it.

So let's say you want to build a simple 3 column layout like this:
<img src="/images/blog/post28a.png" alt="Simple 3 column layout" title="Simple 3 column layout" class="img-center img-responsive" />

First you write your HTML, which in this case is very simple:

    <div class="row">
        <div class="item">item</div>
        <div class="item">item</div>
        <div class="item">item</div>
    </div>

And for the CSS, the most common way to tackle this is to `float` these elements, which means:

    .item {
        display: block;
        width: 33.33%;
        float: left;
    }

This means all objects will float to the left in relationship with each other. The first problem that we get here is this:

<img src="/images/blog/post28b.png" alt="Floating error" title="Floating error" class="img-center img-responsive" />

So now, their parent `.row` doesn't have a height, because floating an object means they will only "interact" with others that are floating. `.row` is not floating so it will not take its floated childs in account. To overcome this, we have to begin "hacking":

1. You can apply `overflow: hidden;` to the parent. It will work as intended, but maybe you can't use this, because you need some element to stick out of the div
2. You can float the `.row`. This way, because it is floated, it will take its child's height into account and properly grow as needed. But maybe you can't, in which case it's getting difficult to overcome this.
3. You can set the `.row` to `display: inline-block;`, that will also take the children intro account, but maybe you need it to be `display: block;` for some other reason.
4. As I've recently learned, you can add two pseudo-elements (`:before` and `:after`) to the parent `.row` and set them as `display: table;` and `clear: both;` to fix this. But then again, if you want to add some pseudo-element to do something visually, you're out of options.

One of these is bound to solve the parent height problem.

So let's say this is fixed and you want to add more items and build something like this:

<img src="/images/blog/post28c.png" alt="Simple 3 columns layout with 6 elements" title="Simple 3 columns layout with 6 elements" class="img-center img-responsive" />

And because the web is not static and you'll never know how big titles will be (unless you force it), you can have `item`s with different heights. If that's the case, this will eventually occur:

<img src="/images/blog/post28d.png" alt="Floated height wrapping error" title="Floated height wrapping error" class="img-center img-responsive" />

Item 3 is smaller than Item 2, so Item 4 will get under 3 and that's not right.
So here we begin "hacking" again, we need to tell that each third item starting in the fourth item should be forced to jump to the next line:

    .item:nth-child(3n+4) {
        clear: left;
    }

But if suddenly we want to have 4 columns, we have to change that rule as well. This is not ideal.

So I'll dwelve into my favourite way of columning, although it might not always work: using `inline-block`.

As a small intro, `display: inline-block;` makes elements flow like text, but still be a block (`display: inline;` makes elements flow like text but do not have width nor height, only the dimensions of its contents). This means that elements put side-by-side will display side-by-side as long as they fit their parent.

That said, let's do this:

    .item {
        display: inline-block;
        width: 33.33%;
    }

This method also needs a small hack to circumvent the following:

<img src="/images/blog/post28e.png" alt="Font size error with inline-block" title="Font size error with inline-block" class="img-center img-responsive" />

What is happening here is that `inline-block` elements behave like words and, like words, they have `word-spacing`, which is a natural space between words. To overcome this you can either reset the font-size on the parent (my favourite way, but with some shortcomings, if you use `ems` or `%` for `font-size`)

    .row {
        font-size: 0;
    }
    .item {
        font-size: 1rem;
    }

Or adjust the `word-spacing`:

    .row {
        word-spacing: -4px;
    }

The `word-spacing` value depends on the typeface you are using, but the rule is to always use the smallest negative spacing possible. And now we have a perfect grid:

<img src="/images/blog/post28f.png" alt="Simple 3 column layout with inline-block" title="Simple 3 column layout with inline-block" class="img-center img-responsive" />

Why is this better? For one, you can change the number of columns without any other change. But the best thing, and the one I use the most, is being able to align items vertically:

<img src="/images/blog/post28g.png" alt="Centering columns vertically" title="Centering columns vertically" class="img-center img-responsive" />

Just by doing this:

    .item {
        vertical-align: middle;
    }

Isn't that great? There's no good way to do that with `float`ed elements. You can also set `vertical-align` to `top`, `bottom` and `baseline` (which means aligned to the text baseline), depending on what you want to achieve.

You can also set the container to `text-align: center;` to do this:

<img src="/images/blog/post28g.png" alt="Centering columns horizontally" title="Centering columns horizontally" class="img-center img-responsive" />

Which is useful for dynamic content where you don't know how much items you will have.

**Conclusion**

There's not one good way to do it, that's the problem and beauty of web technologies! There are loads of ways to do each and every little thing, but there's always nuances that lead you to chose one or the other. At MarsBased we use a mix of these two. We mostly use floats because we reside in Bootstrap's grids to build general layouts, but we don't doubt on using the `inline-block` technique when we need it.

There are also some CSS grids based on `inline-block` that are worth taking a look:

- [Griddle](http://necolas.github.io/griddle/)
- [Justify Grid](http://justifygrid.com/)

But the future is very promising and we have our eyes on [Flexbox](http://learnlayout.com/flexbox.html), although we still can't make the move. Maybe the next front-end post will be about forgetting all of this and using the Flex Box model!
