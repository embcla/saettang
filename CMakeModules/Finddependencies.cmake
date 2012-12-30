    SET ( CZMQ_FIND_REQUIRED TRUE )
    SET ( ZEROMQ_FIND_REQUIRED TRUE )
     
     
     
    ### CZMQ ###
     
    FIND_PATH ( CZMQ_INCLUDE_DIR NAMES czmq.h PATHS /usr/include/ /usr/local/include/ )
    FIND_LIBRARY ( CZMQ_LIBRARY NAMES czmq PATHS /usr/lib /usr/local/lib )
     
    IF ( CZMQ_INCLUDE_DIR AND CZMQ_LIBRARY )
        SET ( CZMQ_FOUND TRUE )
    ENDIF ( CZMQ_INCLUDE_DIR AND CZMQ_LIBRARY )
     
     
    IF ( CZMQ_FOUND )
        SET ( DEP_FOUND TRUE )
        IF ( NOT CZMQ_FIND_QUIETLY )
            MESSAGE ( STATUS "Found CZMQ:" )
            MESSAGE ( STATUS "  (Headers)       ${CZMQ_INCLUDE_DIR}" )
            MESSAGE ( STATUS "  (Library)       ${CZMQ_LIBRARY}" )
        ENDIF ( NOT CZMQ_FIND_QUIETLY )
    ELSE ( CZMQ_FOUND )
        SET ( DEP_FOUND FALSE )
        IF ( CZMQ_FIND_REQUIRED )
            MESSAGE ( FATAL_ERROR "Could not find CZMQ" )
        ENDIF ( CZMQ_FIND_REQUIRED )
    ENDIF ( CZMQ_FOUND )
     
     
     
    ### ZeroMQ ###
     
    FIND_PATH ( ZEROMQ_INCLUDE_DIR NAMES zmq.h PATHS /usr/include/ /usr/local/include/ )
    FIND_LIBRARY ( ZEROMQ_LIBRARY NAMES zmq PATHS /usr/lib /usr/local/lib )
     
    IF ( ZEROMQ_INCLUDE_DIR AND ZEROMQ_LIBRARY )
        SET ( ZEROMQ_FOUND TRUE )
    ENDIF ( ZEROMQ_INCLUDE_DIR AND ZEROMQ_LIBRARY )
     
     
    IF ( ZEROMQ_FOUND )
        SET ( DEP_FOUND TRUE )
        IF ( NOT ZEROMQ_FIND_QUIETLY )
            MESSAGE ( STATUS "Found ZeroMQ:" )
            MESSAGE ( STATUS "  (Headers)       ${ZEROMQ_INCLUDE_DIR}" )
            MESSAGE ( STATUS "  (Library)       ${ZEROMQ_LIBRARY}" )
        ENDIF ( NOT ZEROMQ_FIND_QUIETLY )
    ELSE ( ZEROMQ_FOUND )
        SET ( DEP_FOUND FALSE )
        IF ( ZEROMQ_FIND_REQUIRED )
            MESSAGE ( FATAL_ERROR "Could not find ZeroMQ" )
        ENDIF ( ZEROMQ_FIND_REQUIRED )
    ENDIF ( ZEROMQ_FOUND )

