//
// NOTE:  This file was automatically generated from UTM library via import_utm.pl
// DIRECT EDITS MIGHT BE LOST.
//
/**
 * @author Bernhard Arnold
 *         Takashi Matsushita
 * @date:  2015-03-12
 */

#ifndef tmEventSetup_L1TUtmTriggerMenu_hh
#define tmEventSetup_L1TUtmTriggerMenu_hh

#include "CondFormats/L1TObjects/interface/L1TUtmScale.h"
#include "CondFormats/L1TObjects/interface/L1TUtmCondition.h"
#include "CondFormats/L1TObjects/interface/L1TUtmAlgorithm.h"
#include "CondFormats/Serialization/interface/Serializable.h"

#include <map>
#include <string>

/**
 *  This class implements data structure for TriggerMenu
 */
class L1TUtmTriggerMenu {
public:
  L1TUtmTriggerMenu()
      : algorithm_map_(),
        condition_map_(),
        scale_map_(),
        external_map_(),
        token_to_condition_(),
        name_(),
        version_(),
        comment_(),
        datetime_(),
        uuid_firmware_(),
        scale_set_name_(),
        n_modules_(),
        version(0){};

  virtual ~L1TUtmTriggerMenu() = default;

  /** get algorithm_map_
     *
     * @return reference of algorithm_map_
     */
  const std::map<std::string, L1TUtmAlgorithm>& getAlgorithmMap() const { return algorithm_map_; };

  /** get condition_map_
     *
     * @return reference of condition_map_
     */
  const std::map<std::string, L1TUtmCondition>& getConditionMap() const { return condition_map_; };

  /** get scale_map_
     *
     * @return reference of scale_map_
     */
  const std::map<std::string, L1TUtmScale>& getScaleMap() const { return scale_map_; };

  /** get menu name
     *
     * @return name of the menu
     */
  const std::string& getName() const { return name_; };

  /** get grammar version
     *
     * @return grammar version
     */
  const std::string& getVersion() const { return version_; };

  /** get comment on the menu
     *
     * @return comment
     */
  const std::string& getComment() const { return comment_; };

  /** get datetime of the menu
     *
     * @return datetime
     */
  const std::string& getDatetime() const { return datetime_; };

  /** get UUID of firmware generated by VHDL producer
     *
     * @return UUID
     */
  const std::string& getFirmwareUuid() const { return uuid_firmware_; };

  /** get scale set name
     *
     * @return scale set name
     */
  const std::string& getScaleSetName() const { return scale_set_name_; };

  /** get number of uGT boards for the menu
     *
     * @return number of uGT boards
     */
  const unsigned int getNmodules() const { return n_modules_; };

  /** set menu name
     *
     * @param value [in] name of the menu
     */
  void setName(const std::string& value) { name_ = value; };

  /** set grammar version
     *
     * @param value [in] grammar version
     */
  void setVersion(const std::string& value) { version_ = value; };

  /** set comment on the menu
     *
     * @param value [in] comment
     */
  void setComment(const std::string& value) { comment_ = value; };

  /** set datetime of the menu
     *
     * @param value [in] datetime
     */
  void setDatetime(const std::string& value) { datetime_ = value; };

  /** set UUID of firmware generated by VHDL producer
     *
     * @param value [in] UUID
     */
  void setFirmwareUuid(const std::string& value) { uuid_firmware_ = value; };

  /** set scale set name
     *
     * @param value [in] scale set name
     */
  void setScaleSetName(const std::string& value) { scale_set_name_ = value; };

  /** set number of uGT boards for the menu
     *
     * @param value [in] number of uGT boards
     */
  void setNmodules(const unsigned int value) { n_modules_ = value; };

protected:
  std::map<std::string, L1TUtmAlgorithm> algorithm_map_; /**< map of algorithm <algorithm name, L1TUtmAlgorithm> */
  std::map<std::string, L1TUtmCondition> condition_map_; /**< map of condition <condition name, L1TUtmCondition> */
  std::map<std::string, L1TUtmScale> scale_map_;         /**< map of scale <scale name, L1TUtmScale*> */
  std::map<std::string, unsigned int> external_map_;     /**< map of external <external name, channel id> */
  std::map<std::string, std::string>
      token_to_condition_;     /**< look-up table for translating expression in grammar to expression in condition */
  std::string name_;           /**< name of the menu */
  std::string version_;        /**< menu grammar version */
  std::string comment_;        /**< comment on the menu */
  std::string datetime_;       /**< datetime of the menu */
  std::string uuid_firmware_;  /**< uuid of firmware */
  std::string scale_set_name_; /**< scale set name */
  unsigned int n_modules_;     /**< number of uGT boards for the menu */
  unsigned int version;
  COND_SERIALIZABLE;
};

#endif  // tmEventSetup_L1TUtmTriggerMenu_hh
