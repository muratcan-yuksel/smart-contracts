## explanation

We've created a simple contract that, when deployed on Remix ide, enables us to enter a string (name) and get a message (Hello + name). Also, we can change the name.

In the contract Greeting, we're defining the variables like `string public name` . It is just like the let or const name in JS. Just that we need to enter types in Solidity.

Then we have a constructor function as follows :

````
    constructor(string memory initialName){
        name= initialName;

    }
    ```
````

When we deploy, you'll see that there's a section on Remix ide that's asking for an initial name. That's what this constructor function does. It can access the name variable I suppose, since this constructor is inside the Greeting function and the name was defined there too. It is quite similar to the function scope in JS.
