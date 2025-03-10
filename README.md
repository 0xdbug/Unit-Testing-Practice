Basics & Fundamentals of iOS Unit Testing from the book (Jon Reid - iOS Unit Testing By Example)

> Stuff the test needs before it can run is called: `text fixture`

> If the code hasn’t yet shipped, we should write tests that express the requirements for that section of code. This means we need to reason about how the code is supposed to behave. The tests may even catch some bugs.
> 
> If the code has shipped, then real users are exercising it. As long as no one has found any bugs, that section of code does its job. This means we don’t need to try to reason about the code’s behavior. The tests just need to capture the existing behavior.

#### characterization tests. 
These are tests that capture the actual behavior of the code. To write a characterization test, do the following: 
1. Call the code from a test, yielding some kind of result. 
2. Write an assertion comparing the result to a value you know won’t match.
3. Run the test. The failure message will tell you the actual result. 
4. Adjust the assertion so that it expects the actual result. 
5. Rerun the test to see it pass. 

> This creates a test that guarantees a piece of the code’s behavior. By building up coverage with characterization tests, we’re making a safety net. It’s an early warning system that will tell us if we changed any existing behavior. With such tests in place, you’ll be able to move faster. Why? Because you won’t need to spend as much time manually checking that you haven’t broken anything.


### Unit Testing - Dependencies (FIRE)
F - Fast

I - Isolated (no persisting side effects beyond the test run)

R- Repeatable (same result every time)

E - Easy-to-use

### Unit Testing (FIRST)
F - Fast

I - Isolated

R- Repeatable

S - Self-verifying (no human interaction needed)

T - Timely (before production code)


#### Dependencies - (HardDependencies project)
Dependencies make writing tests difficult there are a few different ways to work around them

Its better to limit these two to legacy code only

- Substituting (Singleton Backdoor)
- Subclassing

these two are good when the code is already written and works. we want minimal changes to production code.

otherwise regular injection is fine ig
- Constructor Injection
- Property Injection
- Method Injection

