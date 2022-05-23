contract main {




// =====================  Runtime code  =====================


const getBuyPrice = 100254831521475310

const name = 'FoMo3D Long Official'

const getPlayerVaults(uint256 arg1) = 0

const symbol = 'F3D'

const calcKeysReceived(uint256 arg1, uint256 arg2) = 1646092234676

const getPlayerInfoByAddress(address arg1) = 18163, 'molicancer', 122081953021293259355, 0, 0, 0, 0


uint256 airDropPot_;
uint256 airDropTracker_;
mapping of uint256 pIDxAddr_;
mapping of uint256 pIDxName_;
mapping of struct plyr_;
mapping of struct plyrRnds_;
mapping of uint8 stor6;
mapping of struct round_;
mapping of uint256 rndTmEth_;
mapping of struct fees_;
mapping of struct potSplit_;
uint256 rID_;
uint8 activated_;
uint256 storB392;
uint256 storB392;
uint8 storB392;
uint256 storB392;
uint256 storB392;
uint256 storB392;
uint256 storB392;
uint256 storB392;
uint256 storB392;
uint256 storB392;
uint256 storB392;

function pIDxAddr_(address arg1) {
    return pIDxAddr_[arg1]
}

function airDropTracker_() {
    return airDropTracker_
}

function round_(uint256 arg1) {
    return round_[arg1].field_0, 
           round_[arg1].field_256,
           round_[arg1].field_512,
           bool(round_[arg1].field_768),
           round_[arg1].field_1024,
           round_[arg1].field_1280,
           round_[arg1].field_1536,
           round_[arg1].field_1792,
           round_[arg1].field_2048,
           round_[arg1].field_2304,
           round_[arg1].field_2560,
           round_[arg1].field_2816
}

function plyrNames_(uint256 arg1, bytes32 arg2) {
    return bool(stor6[arg1][arg2])
}

function fees_(uint256 arg1) {
    return fees_[arg1].field_0, fees_[arg1].field_256
}

function pIDxName_(bytes32 arg1) {
    return pIDxName_[arg1]
}

function rndTmEth_(uint256 arg1, uint256 arg2) {
    return rndTmEth_[arg1][arg2]
}

function rID_() {
    return rID_
}

function plyrRnds_(uint256 arg1, uint256 arg2) {
    return plyrRnds_[arg1][arg2].field_0, 
           plyrRnds_[arg1][arg2].field_256,
           plyrRnds_[arg1][arg2].field_512,
           plyrRnds_[arg1][arg2].field_768
}

function potSplit_(uint256 arg1) {
    return potSplit_[arg1].field_0, potSplit_[arg1].field_256
}

function activated_() {
    return bool(activated_)
}

function airDropPot_() {
    return airDropPot_
}

function plyr_(uint256 arg1) {
    return plyr_[arg1].field_0, 
           plyr_[arg1].field_256,
           plyr_[arg1].field_512,
           plyr_[arg1].field_768,
           plyr_[arg1].field_1024,
           plyr_[arg1].field_1280,
           plyr_[arg1].field_1536
}

function _fallback() payable {
    revert
}

function setOtherFomo(address arg1) {
  stop
}

function buyXid(uint256 arg1, uint256 arg2) payable {
  stop
}

function buyXaddr(address arg1, uint256 arg2) payable {
  stop
}

function buyXname(bytes32 arg1, uint256 arg2) payable {
  stop
}

function reLoadXid(uint256 arg1, uint256 arg2, uint256 arg3) {
  stop
}

function reLoadXname(bytes32 arg1, uint256 arg2, uint256 arg3) {
  stop
}

function reLoadXaddr(address arg1, uint256 arg2, uint256 arg3) {
  stop
}

function registerNameXID(string arg1, uint256 arg2, bool arg3) payable {
  stop
}

function registerNameXaddr(string arg1, address arg2, bool arg3) payable {
  stop
}

function registerNameXname(string arg1, bytes32 arg2, bool arg3) payable {
  stop
}

function getTimeLeft() {
    round_[stor11].field_512 = -(block.timestamp % 180) + 185
    return (-(block.timestamp % 180) + 185)
}

function iWantXKeys(uint256 arg1) {
    if not arg1:
        return 0
    if 100254831521475310 * arg1 / arg1 != 100254831521475310:
        revert with 0, 'SafeMath mul failed'
    return (100254831521475310 * arg1 / 10^18)
}

function withdraw() {
    call 0x6b5d2ba1691e30376a394c13e38f48e25634724f with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function activate() {
    round_[1].field_0 = 1954
    storB392 = 2
    storB392 = 1533795558
    storB392 = 0
    storB392 = 1533794558
    storB392 = 34619432129976331518578579
    storB392 = 21000021 * 10^11
    storB392 = 21737891789564224505545
    storB392 = 0
    storB392 = 0
    storB392 = 0
    storB392 = 0
}

function getCurrentRoundInfo() {
    round_[stor11].field_512 = -(block.timestamp % 180) + 185
    return 0, 
           rID_,
           round_[stor11].field_1280,
           round_[stor11].field_512,
           round_[stor11].field_1024,
           round_[stor11].field_1792,
           round_[stor11].field_256 + (10 * round_[stor11].field_0),
           0xd8723f6f396e28ab6662b91981b3eabf9de05e3c,
           'molicancer',
           3053823263697073356017,
           4675447079848478547678,
           85163999483914905978445,
           3336394330928816056073,
           519463956231409304003
}



}
