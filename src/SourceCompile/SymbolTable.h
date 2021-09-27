/*
 Copyright 2019 Alain Dargelas

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

/*
 * File:   SymbolTable.h
 * Author: alain
 *
 * Created on March 6, 2017, 11:10 PM
 */

#ifndef SYMBOLTABLE_H
#define SYMBOLTABLE_H

#include <stdint.h>

#include <string>
#include <string_view>
#include <unordered_map>
#include <vector>

namespace SURELOG {

typedef uint64_t SymbolId;

typedef uint32_t NodeId;

static constexpr NodeId InvalidNodeId = 969696;

class SymbolTable {
  static constexpr int kBufferCapacity = 1024 * 1024;
  typedef std::vector<std::string> buffers_t;

  typedef std::vector<std::string_view> Id2SymbolMap;
  typedef std::unordered_map<std::string_view, SymbolId> Symbol2IdMap;

 public:
  SymbolTable();
  ~SymbolTable();

  // Register given "symbol" string as a symbol and return its id.
  // If this is an existing symbol, its ID is returned, otherwise a new one
  // is created.
  SymbolId registerSymbol(std::string_view symbol);

  // Find id of given "symbol" or return bad-ID (see #getBad()) if it doesn't
  // exist.
  SymbolId getId(std::string_view symbol) const;

  // Get symbol string identified by given ID or BadSymbol if it doesn't exist
  // (see #getBadSymbol()).
  std::string_view getSymbol(SymbolId id) const;

  // Get a vector of all symbols. As a special property, the SymbolID can be
  // used as an index into this  vector to get the corresponding text-symbol.
  const std::vector<std::string_view>& getSymbols() const {
    return m_id2SymbolMap;
  }

  static std::string_view getBadSymbol();
  static SymbolId getBadId() { return 0; }
  static std::string_view getEmptyMacroMarker();

 private:
  SymbolId m_idCounter;
  Id2SymbolMap m_id2SymbolMap;
  Symbol2IdMap m_symbol2IdMap;
  buffers_t buffers;
};

};  // namespace SURELOG

#endif /* SYMBOLTABLE_H */
