contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - playWar(uint256 arg1)
#
const houseBankRoll = eth.balance(this.address)


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
uint8 stor5; offset 160
address owner;
uint8 stor6; offset 160
address stor6;
uint256 tokenDecimalPlaces;
address tokenAddress;
uint256 tokenWinRatio;
uint256 tokenLossRatio;
uint8 stor11;
uint256 TEST_HOUSE;
uint256 TEST_PLAYER;
uint256 sideBetPercent_MAX;
uint256 bet_MAX;
uint256 bet_MIN;
uint32 stor17;
uint256 stor17; offset 32
uint256 gasForShuffle;
mapping of struct hand_info;
mapping of struct firstHandInfo;
mapping of uint8 stor20;
mapping of uint256 refundPool;

function firstHandInfo(address arg1) {
    return bool(firstHandInfo[arg1].field_0), firstHandInfo[arg1].field_256, firstHandInfo[arg1].field_512
}

function tokenDecimalPlaces() {
    return tokenDecimalPlaces
}

function gasForShuffle() {
    return gasForShuffle
}

function paused() {
    return bool(stor5)
}

function registeredToken() {
    return bool(uint8(stor6.field_160))
}

function tokenWinRatio() {
    return tokenWinRatio
}

function TEST_HOUSE() {
    return TEST_HOUSE
}

function owner() {
    return owner
}

function hasHandInProgress(address arg1) {
    return bool(stor20[arg1])
}

function tokenLossRatio() {
    return tokenLossRatio
}

function tokenAddress() {
    return tokenAddress
}

function TEST_MODE() {
    return bool(stor11)
}

function sideBetPercent_MAX() {
    return sideBetPercent_MAX
}

function hand_info(bytes32 arg1) {
    return hand_info[arg1].field_0, 
           hand_info[arg1].field_256,
           hand_info[arg1].field_512,
           hand_info[arg1].field_768,
           hand_info[arg1].field_1024,
           hand_info[arg1].field_1280,
           hand_info[arg1].field_1536
}

function TEST_PLAYER() {
    return TEST_PLAYER
}

function bet_MAX() {
    return bet_MAX
}

function refundPool(address arg1) {
    return refundPool[arg1]
}

function bet_MIN() {
    return bet_MIN
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function getWinTokenAmount() {
    require tokenWinRatio
    return (10^18 / tokenWinRatio)
}

function ToggleTestMode(bool arg1) {
    require msg.sender == owner
    stor11 = uint8(arg1)
}

function getLossTokenAmount() {
    require tokenLossRatio
    return (10^18 / tokenLossRatio)
}

function getTokenWinValue(uint256 arg1) {
    require tokenWinRatio
    return (arg1 / tokenWinRatio)
}

function unpause() {
    require msg.sender == owner
    require stor5
    stor5 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor5
    stor5 = 1
    emit Pause()
}

function getTokenLossValue(uint256 arg1) {
    require tokenLossRatio
    return (arg1 / tokenLossRatio)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setOraclizeGas(uint32 arg1) {
    require msg.sender == owner
    uint32(stor17.field_0) = arg1
    Mask(224, 0, stor17.field_32) = 0
}

function setBetMinMax(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 > arg2
    bet_MIN = arg1
    bet_MAX = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setSideBetPercentage(uint256 arg1) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 <= 100
    sideBetPercent_MAX = arg1
}

function setWinLossAmount(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    tokenWinRatio = 10^18 / arg1
    require arg2
    tokenLossRatio = 10^18 / arg2
}

function registerToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    tokenAddress = arg1
    address(stor6.field_0) = arg1
    uint8(stor6.field_160) = 1
    tokenDecimalPlaces = arg2
}

function SetTestModeHands(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 <= 416
    require arg1 >= 1
    require arg2 <= 416
    require arg2 >= 1
    TEST_HOUSE = arg1
    TEST_PLAYER = arg2
}

function withdrawFunds() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function remainingTokens(address arg1) {
    require ext_code.size(address(stor6.field_0))
    call address(stor6.field_0).0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^tokenDecimalPlaces
    return (ext_call.return_data[0] / 10^tokenDecimalPlaces)
}

function refund() {
    require not stor5
    require 1 == bool(stor20[msg.sender])
    require refundPool[msg.sender] > 0
    require refundPool[msg.sender] <= bet_MAX
    call msg.sender with:
       value refundPool[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit betPayout(refundPool[msg.sender], msg.sender);
    stor20[address(msg.sender)] = 0
    refundPool[address(msg.sender)] = 0
    return refundPool[msg.sender]
}

function withdrawTokens() {
    require msg.sender == owner
    require ext_code.size(address(stor6.field_0))
    call address(stor6.field_0).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6.field_0))
    call address(stor6.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function playerSurrender() payable {
    require not stor5
    if not firstHandInfo[msg.sender].field_0:
        emit DEBUG_str(Array(len=20, data='nothing to surrender'));
    else:
        emit DEBUG_str(Array(len=19, data='player surrendering'));
        require firstHandInfo[msg.sender].field_256 <= firstHandInfo[msg.sender].field_513
        call msg.sender with:
           value firstHandInfo[msg.sender].field_513 - firstHandInfo[msg.sender].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit betPayout((firstHandInfo[msg.sender].field_513 - firstHandInfo[msg.sender].field_256), msg.sender);
        firstHandInfo[msg.sender].field_0 = 0
        firstHandInfo[msg.sender].field_256 = 0
        firstHandInfo[msg.sender].field_512 = 0
}

function setGasPrice(uint256 arg1) {
    require msg.sender == owner
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).setCustomGasPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
