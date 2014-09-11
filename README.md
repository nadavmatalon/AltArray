#AltArray: enum_inject &amp; recu_inject

##Makers Academy | Week 5 | Challenge | Part I

##Table of Contents

* [General Description](#general-description)
* [Guidelines](#guidelines)
* [Testing](#testing)


##General Description

This repo contians the answer to __Week 5 Friday Challange (Part I)__ of the course 
at [Makers Academy](http://www.makersacademy.com/).

This challange consisted of writing an effective [Ruby](https://www.ruby-lang.org/en/)-based 
equivallent to the [__inject()__](http://ruby-doc.org/core-2.1.2/Enumerable.html) 
method.

The two methods offered here, __enum_inject__ and __recu_inject__, were created with 
[TDD](http://en.wikipedia.org/wiki/Test-driven_development) 
methodology (tests written with [Rspec](http://rspec.info/)).

The two said methods were created inside a new wrapper class: __AltArray__ which inherits 
from the __Array__ class.

The methods themselves differ in their code architechture: __enum_inject()__ 
is based on __ennumeration__, whereas the __recu_inject()__ is based or recursion.


##Guidelines

* Reopen the Array class or subclass it
* Rewrite the inject() method. Write a test for it first. 
* Don't worry about returning an enumerator, assume a block is always given
* Name your method differently (that is, not inject() or subclass Array) 
because rspec uses inject() internally, so the tests will fail with weird 
messages unless your implementation of inject is perfect
* If you would like a challenge, rewrite inject using two approaches: using iterators 
and using recursion


##Testing

Tests were written with [Rspec](http://rspec.info/) (3.0.4).

To run the test in terminal: 

```bash
$> cd alt_array
$> rspec
```
