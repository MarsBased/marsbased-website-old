# The When, Why, and Who to Refactoring

Everyone talks about **what** is refactoring, and **how** to do it, but we want to share what we've learned from using refactor as a tool to bring old code to new developers.

## The When

Picture yourself as the CTO of a recently founded startup: you are sitting in front of your computer, fingers ready to code, waiting for your salesman to bring you the next generation big business idea. But when your this first project comes it happens to be already started by someone else. And it is broken. The first five words that come to your mind probably are: "I can do that better!".

While that dangerous thought may actually be true you should think about the client needs. This project came to you because it's been already a while since the owner started paying for a development and it still hasn't seen a good ending. It will probably take you more time to start from scratch and build up everything instead of reusing the existent code, just changing it for better.

That doesn't mean you should start refactoring all the application's code and after that start adding features, because if the application is big enough it will take you a lot of time, which is time you don't spend adding the new features you are being paid for. So what has proven efficient to our team is to aim to conquer a certain part of the application to add a new feature, and while you are woking on it try at least to **leave it better than it was**.

Applying this technique you will find someday that the application looks and feels way better and new changes easily fit in while new features have also been implemented. **Refactoring is a time investment**: you put some extra time now to leave code in a certain way that later on applying changes will take less effort.

That fight for the *Greater Code* is better fought if you are shielded with some testing for the application, which if it came broken to you may also be broken or may not be there at all. Refactoring the tests is as important as refactoring the code, but again you will have to reach a compromise between the client timing and the time you spend adding or refactoring tests.

## The Why

While "New is always better" may sound great, old code makes some really good points: it's already there, and already done. It may be outdated, it may not work, but it is the result of somebody else's mind effort to solve a specific problem, and their approach could be really different from what you would have done, so you can still learn a lot from it.

The bad code also tends to replicate itself. Let's be honest. **We all copy and paste code**, although we know we aren't supposed to do it. It is a horrible habit, we know so and we feel less terrible if the copied code is ours or even better if it is already there. Rembember the next programmer will often be a lazy dog. The next programmer will often be you.

But leaving bad code as is also pushes other teammates to follow the conventions they see when they touch something in that application. This situation gets alarming when concerning junior developers, because they adopt then these practices as a reference for the future code.

If you aren't convinced yet, then do it for the code itself. Your code would do it for you.

## The Who

We strongly believe refactoring is good for everybody, it forces you to think over a piece of code that somebody else wrote (that could have also been you, another time, another place) try and find a better solution for the same problem. Better could mean a really wide range of possibilities, and it is also mind refreshing to see what would different people improve.

That's why we've found appropriate to use refactor as the first task for a developer that's new in a project. Refactoring a specific problem will give that person a way in to the code, to a problem with a given solution to be changed, and from there he or she will most likely **have** to touch other parts of the application, thus gaining a better comprehension of the whole by understanding the tiny parts.

Applying this with a new **junior** developer has proven right for us. Junior developers have more to learn, and sharing your refactoring tools with them will make them grow as developers in the right direction. They are also less attached  to any bad habits, and tend to write code the way they read it. They may also need a senior developer to guide them through the process in the begining, but soon enough they will grow to a healthy code writing habit. Once again, the time you invest in mentoring a junior developer is time that will be given back because you know you can fully rely on that person you trained.

The one asked to do so will also lose fear to propose changes because from day one is being asked to give an opinion on a code that somebody (probably more experienced) wrote. A developer with confidence on the changes that need to be done will be far more independent taking decisions on the benefit of the project, decisions the whole team can rely upon because of the guidance received.

Not only have we a compromise towards the clients to deliver **quality code**, but also on **the amount of time that takes building it**.

What's your experience on refactoring from day zero? Have you ever tried it? Would you add other Whys Whens or Whos? If you have any thoughts on the subject feel free to jump on the comments section below!
