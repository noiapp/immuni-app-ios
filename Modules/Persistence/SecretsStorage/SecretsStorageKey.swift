// SecretsStorageKey.swift
// Copyright (C) 2020 Presidenza del Consiglio dei Ministri.
// Please refer to the AUTHORS file for more information.
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU Affero General Public License for more details.
// You should have received a copy of the GNU Affero General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.

import Foundation

/// Namespace for SecretsStorage keys
public class SecretsStorageKeys {}

/// SecretsStorage key. A key basically contains how the value is
/// stored/retrieved (e.g., the type)
public class SecretsStorageKey<T>: KVStorageKeys {
  /// The key with which the value is stored/retrieved
  public let secretsStorageKey: String

  /**
   Creates a new key with a specific location in the SecretsStorage
   - parameter key: the location in the storage
   */
  public init(_ key: String) {
    self.secretsStorageKey = key
  }

  /// Returns the key but for a Data type. It can be used to store custom types
  public var dataVersionKey: SecretsStorageKey<Data> {
    return SecretsStorageKey<Data>(self.secretsStorageKey)
  }
}
