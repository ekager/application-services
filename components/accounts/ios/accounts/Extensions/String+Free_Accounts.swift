/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import Foundation

extension String {
    public init(freeingAccountsString accountsString: UnsafeMutablePointer<CChar>) {
        defer { fxa_mgr_str_free(accountsString) }
        self.init(cString: accountsString)
    }
}