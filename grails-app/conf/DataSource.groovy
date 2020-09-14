dataSource {
    pooled = true
    jmxExport: true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = "dada007--"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update',     'validate', ''
            url = "jdbc:mysql://localhost:3306/librarydb"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = ""   // Test Server URL
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://libraryDB.cv7ug7iimmp9.us-east-1.rds.amazonaws.com:3306/librarydb"   // Production Server URL
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}