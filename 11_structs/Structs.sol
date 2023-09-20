// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Structs {
    struct Todo {
        string text;
        bool completed;
    }

    // ways to initialize a struct
    Todo public myTodo = Todo("study", true);
    // or
    // Todo public myTodo = Todo({text: "study", completed: true});

    // Array of struct
    Todo[] public todos;

    function createTodo(string calldata _text) public {
        // we can add in 3 different ways
        // todos.push(Todo(_text, false));
        // or
        // todos.push(Todo({text: _text, completed: false}));
        // or
        Todo memory tempTodo;
        tempTodo.text = _text;
        tempTodo.completed = false;

        todos.push(tempTodo);
    }

    // fetch item
    function getTodo(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];

        return (todo.text, todo.completed);
    }

    // update
    function updateTodo(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
        todo.completed = !todo.completed;   // toggle bool value
    }
}