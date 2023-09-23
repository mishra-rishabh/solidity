We can send ether to other contracts by:
1. transfer
2. send
3. call

Which method we should use? <br/>
call in combination with re-entrancy guard is the recommended method to use after December 2019.

A contract receiving ether must have at least one of the functions below:
1. receive
2. fallback

receive() is called if msg.data is empty, otherwise fallback() is called.

Which function is called, fallback() or receive() ?

                send Ether
                    |
            msg.data is empty?
                   / \
                yes  no
                /     \
    receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()

The above chart shows that, while sending ether-
* if msg.data is not empty then fallback() will be called
* if msg.data is empty then it will check if receive() is there or not
* if receive() is there then the same will be called
* if receive() is not there then fallback() will be called