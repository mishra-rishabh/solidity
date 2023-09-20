// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <= 0.9.0;

contract DataLocation {
    struct Todo {
        string text;
        bool completed;
    }

    Todo public myTodo = Todo("study", true);

    Todo[] public todos;

    function createTodo(string calldata _text) public {
        // here _text is calldata because arguments are generally immutable, we don't change args
        Todo memory tempTodo;   // temporary location that will store the text and completed properties of struct and then is pushed to main array
        tempTodo.text = _text;
        tempTodo.completed = false;

        todos.push(tempTodo);
    }

    function getTodo(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];  // storage is used here, which tells that reference of state variable should be taken

        return (todo.text, todo.completed);
    }

    function updateTodo(uint _index, string calldata _text) public {
        // storage is used here, which tells that reference of state variable should be taken
        // and it will update or make changes to the state variable only.
        Todo storage todo = todos[_index];
        todo.text = _text;
        todo.completed = !todo.completed;
    }
}