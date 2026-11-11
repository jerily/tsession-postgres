# SPDX-License-Identifier: MIT
package require tsession 1.1.0
package require tsession::sql 1.1.0
package require tdbc::postgres 1.1.8
namespace eval ::tsession::postgres {}
proc ::tsession::postgres::create {args} {
    ::tsession::sql::create postgresql {*}$args
}
proc ::tsession::postgres::initdb {connection} {
    ::tsession::sql::initdb $connection postgresql
}
package provide tsession-postgres 1.0.0
