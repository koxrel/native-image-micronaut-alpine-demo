FROM registry.digitalocean.com/koxrel-cr/nik-builder:latest as builder
ENV LAYERS_DIR build/docker/layers
WORKDIR /app
COPY $LAYERS_DIR $LAYERS_DIR
RUN native-image --static --libc=musl -H:Class=me.koxrel.ApplicationKt -H:Name=application -H:ConfigurationFileDirectories=$LAYERS_DIR/resources --no-fallback -cp $LAYERS_DIR/libs/*.jar:$LAYERS_DIR/resources:$LAYERS_DIR/application.jar
FROM alpine:latest
COPY --from=builder /app/application /app/application
ENTRYPOINT ["/app/application"]
EXPOSE 8080
