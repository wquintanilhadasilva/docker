FROM rabbitmq:3.7-management

ADD rabbitmq.config /etc/rabbitmq/
ADD definitions.json /etc/rabbitmq/
# ADD advanced.config /etc/rabbitmq/

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/definitions.json
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.config
# RUN chown rabbitmq:rabbitmq /etc/rabbitmq/advanced.config

RUN rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_federation_management rabbitmq_shovel_management rabbitmq_stomp rabbitmq_shovel

# RUN rabbitmqctl set_parameter shovel shovel-local '{"src-uri": "amqp://admin:nimda@localhost/remoto", "src-queue": "remoto.queue", "dest-uri": "amqp://admin:nimda@rabbitmq-local/local", "dest-exchange": "local", "src-exchange-key": "#", "reconnect-delay": 10}'

# RUN rabbitmqctl set_parameter shovel shovel-local '{"src-uri": "amqp://admin:nimda@localhost/remoto", "src-queue": "remoto.queue", "dest-uri": "amqp://admin:nimda@rabbitmq-local/local", "dest-exchange": "local", "src-exchange-key": "#", "reconnect-delay": 10}'
