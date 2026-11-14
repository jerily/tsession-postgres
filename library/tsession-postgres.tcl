# Copyright Jerily LTD. All Rights Reserved.
# SPDX-FileCopyrightText: 2026 Neofytos Dimitriou (neo@jerily.cy)
# SPDX-License-Identifier: MIT.

# Register the package and load its dependencies.
package require tsession 2.0.1
package require tsession::sql 2.0.1
package require tdbc::postgres 1.1.8
namespace eval ::tsession::postgres {}
proc ::tsession::postgres::create {args} {
    ::tsession::sql::create postgresql {*}$args
}
proc ::tsession::postgres::initdb {connection} {
    ::tsession::sql::initdb $connection postgresql
}
package provide tsession-postgres 1.0.2
