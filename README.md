<div align="center">
  <img src="assets/images/reusable-package.png" alt="Logo" width="160">

  <h3 align="center">Reusable Package</h3>

  <p align="center">
    A package to be reusable in multiple Flutter projects.
  </p>
</div>

## About the content

When I was trying to do the [Flutter Clean App](https://github.com/TulioPintoNeto/Flutter-Clean-Architecture), a demand appeared from my work to make a ready project reusable. We were finishing a big project for one of our clients and a new project was planned to start from "zero". Well, the main problem is that this new project would use some parts of the first one.

So, my original idea was to build a package that is reusable, and, of course, a new project (which is the [Reusable Project](https://github.com/TulioPintoNeto/reusable-project-A)) to use this package, to see how things could be done.

## What I'm dealing with

### Encapsulating the Classes

My first two challenges were:

- I want to have some classes that will be used only by my package (not supposed to be used by outside projects);
- I also want to encapsulate the classes, so the developers can't open the class (by following its implementation) and start to change it for free (because they think that is a project class and not the package class);

Trying to solve this was quite easy, first, I split the public classes in two: ```ReusableCard``` and ```_ReusableCard```. Then, I put the then in separated files, and connected each other by the ```part/part of``` resources in a common archive (called widgets.dart). With this, the user that try to follow the implementation of ```ReusableClass``` will only see a class that extends a private class ```_ReusableCard``` (which can't be followed).

With this case, I also can put my own private classes using the same logic, but without creating a public class for it, and using the private class directly in the Reusable Package.
