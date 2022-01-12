<div align="center">
  <img src="assets/images/reusable-package.png" alt="Logo" width="160">

  <h3 align="center">Reusable Package</h3>

  <p align="center">
    A package to be reusable in multiple Flutter projects.
  </p>
</div>

## About the content

When I was trying to do the [Flutter Clean App](https://github.com/TulioPintoNeto/Flutter-Clean-Architecture), a demand appeared from my work to have an already made project be reusable. We were finishing a big project in one of our clients and a new project was intended to be constructed from "zero". Well, the main problem is that this new project will be using some parts of the first one.

So, my original idea is to build a package that is reusable, and, of course, two new projects to use this package, to see how things are going to be done.

## What I'm dealing with

### Encapsulating the Classes

My first two challenges were:

- I want to have some classes there will be used only for my package (not supposed to be used by outside projects);
- I also want to have some encapsulating of the classes, so the user don't open the class (by following its implementation) and start to change it by free (because he thinks that is a project class and not the package class);

Trying to solve this was quite easy, first, I split the public classes in two: ```ReusableCard``` and ```_ReusableCard```. Then, I put the then in separated files, and connected each other by the ```part/part of``` resources in a common archive (called widgets.dart). With this, the user that try to follow the implementation of ```ReusableClass``` will only see a class that extends a private class ```_ReusableCard``` (which can't be followed).

With this case, I also can put my own private classes using the same logic, but without creating a public class for it, and using the private class directly in the Reusable Package.
