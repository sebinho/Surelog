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
 * File:   FileUtils.h
 * Author: alain
 *
 * Created on March 16, 2017, 11:02 PM
 */

#ifndef FILEUTILS_H
#define FILEUTILS_H
#include <vector>

namespace SURELOG {

class FileUtils {
 public:
  static bool fileExists(const std::string name);
  static bool fileIsRegular(const std::string name);
  static bool fileIsDirectory(const std::string name);
  static SymbolId locateFile(SymbolId file, SymbolTable* symbols,
                             const std::vector<SymbolId>& paths);
  static int mkDir(const char* path);
  static std::string getFullPath(const std::string path);
  static std::string getPathName(const std::string path);
  static unsigned long fileSize(const std::string name);
  static std::vector<SymbolId> collectFiles(const std::string dirPath,
                                            const std::string extension,
                                            SymbolTable* symbols);
  static std::vector<SymbolId> collectFiles(SymbolId dirPath,
                                            SymbolId extension,
                                            SymbolTable* symbols);
  static std::vector<SymbolId> collectFilesRegexp(const std::string dirPath,
                                                  const std::string regexp,
                                                  SymbolTable* symbols);
  static void collectFiles(const std::string dirPath,
                           std::vector<std::string>& dirs, unsigned int level,
                           SymbolTable* symbols, std::vector<SymbolId>& files);
  static std::vector<SymbolId> collectFiles(std::string pathSpec,
                                            SymbolTable* symbols);
  static std::string getFileContent(const std::string name);

 private:
  FileUtils();
  FileUtils(const FileUtils& orig);
  virtual ~FileUtils();
};

};  // namespace SURELOG

#endif /* FILEUTILS_H */
