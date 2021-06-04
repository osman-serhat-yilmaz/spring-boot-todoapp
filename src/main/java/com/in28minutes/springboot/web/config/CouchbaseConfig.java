package com.in28minutes.springboot.web.config;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.couchbase.config.AbstractCouchbaseConfiguration;

import java.util.Arrays;
import java.util.List;

@Configuration
public class CouchbaseConfig extends AbstractCouchbaseConfiguration {

    @Override
    protected List<String> getBootstrapHosts() {
        return Arrays.asList("127.0.0.1");
    }
/*
    protected List<String> getBootstrapHosts() {
        return Arrays.asList("127.0.0.1");
    }
*/

    @Override
    protected String getBucketName() {
        return "default";
    }

    @Override
    protected String getUsername(){
        return "Administrator";
    }

    @Override
    protected String getBucketPassword() {
        return "153546";
    }
}