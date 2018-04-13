# Dev Posts

### Building with React & NextJS
`March 2018`

!!! info ""
    //TODO


### The wild west of email threads
`February 2018`

!!! info ""
    //TODO

***

### Streaming analytics on logs 
`2017`  
`distributed systems` `logging` `Apache Spark` `Spark Streaming`    

!!! info ""
    I had been wanting to experiment with the spark streaming framework for a while now, ever since I first got my hands on with the
    spark framework itself to work on a lifecycle analysis application that processed over a TB of data and generated meaningful
    clustered outputs.

    Spark Streaming for the uninitiated is a powerful platform that enables realtime analysis.

    The Problem at hand:  
    I am sure many developers in this day and age have at some point or the other run into a situation losing
    context ever so often while debugging an error or an anomalous behaviour trying to keep track of one identifier for incoming request
    mapped to second and that mapped to the third just to see where in all the event went through and processed in its lifecycle. 
    It particularly becomes even harder when your system is event driven and maintains state for decision making.

    So here's what I decided to do. Build a spark streaming application that reads logs from multiple services in realtime from a message queue.
    Process it in memory up until the corresponding event/request context expires. Aggregate all required information for that particular event 
    into a user defined structured data type. Define trigger conditions for alerts and dumps of error/warn and pass the object containing all the
    logically mapped info for the program/developer to analyse.

    This is what the POC pipeline looked like.  
    [insert basic pipeline sequence diagram]

***
