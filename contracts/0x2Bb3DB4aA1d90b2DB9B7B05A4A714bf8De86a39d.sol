contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - placeBet(uint16 arg1, uint16 arg2, bool arg3)
#
const sub_0d605c58(?) = 150

const sub_1aeab314(?) = 46296296296296

const sub_4749d25b(?) = (6 * 3600)

const sub_637f0863(?) = 400

const sub_aaa31ff9(?) = 10^6

const sub_c8d47bea(?) = 125

const TOKEN = 0x54cdc9d889c28f55f59f6b136822868c7d4726fc

const HOUSE_EDGE_DIVISOR = 70


address aAddress;
address owner;
address stor2;
address stor3;
uint256 stor3;
array of uint256 stor4;
uint256 oraclizeCallbackGas;
uint256 oraclizeGasPrice;
uint256 sub_3bf88187;
uint256 sub_62852616;
uint256 sub_3fb7adb1;
uint256 sub_1465a913;
uint256 sub_02599810;
uint256 maxProfit;
uint256 sub_ccf7ecd1;
uint256 sub_cebb4989;
mapping of struct bets;
mapping of struct sub_904c45b5;

function sub_02599810(?) {
    return sub_02599810
}

function a() {
    return aAddress
}

function sub_1465a913(?) {
    return sub_1465a913
}

function sub_3bf88187(?) {
    return sub_3bf88187
}

function sub_3fb7adb1(?) {
    return sub_3fb7adb1
}

function oraclizeCallbackGas() {
    return oraclizeCallbackGas
}

function sub_62852616(?) {
    return sub_62852616
}

function owner() {
    return owner
}

function sub_904c45b5(?) {
    return sub_904c45b5[arg1].field_0
}

function getLuckProps(address arg1) {
    return sub_904c45b5[address(arg1)].field_0, sub_904c45b5[address(arg1)].field_0
}

function maxProfit() {
    return maxProfit
}

function bets(bytes32 arg1) {
    return bets[arg1].field_0, bets[arg1].field_256
}

function sub_ccf7ecd1(?) {
    return sub_ccf7ecd1
}

function oraclizeGasPrice() {
    return oraclizeGasPrice
}

function sub_cebb4989(?) {
    return sub_cebb4989
}

function destroy() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    if sub_3bf88187 >= 10^17:
        revert with 0, 'There are pending bets!'
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function decodeProps(uint256 arg1) {
    if uint16(arg1) == 1:
        return arg1 << 128, arg1 << 192, arg1 << 240, arg1 << 240, uint16(arg1), 1
    return arg1 << 128, arg1 << 192, arg1 << 240, arg1 << 240, uint16(arg1), 0
}

function getContractProps() {
    return sub_62852616, 
           (oraclizeGasPrice * oraclizeCallbackGas) + sub_3fb7adb1,
           (oraclizeGasPrice * oraclizeCallbackGas) + sub_1465a913,
           maxProfit,
           sub_ccf7ecd1
}

function getBetProps(bytes32 arg1) {
    if bets[arg1].field_0 == 1:
        return bets[arg1].field_0, bets[arg1].field_0, bets[arg1].field_0, bets[arg1].field_0, bets[arg1].field_16, 1
    return bets[arg1].field_0, bets[arg1].field_0, bets[arg1].field_0, bets[arg1].field_0, bets[arg1].field_16, 0
}

function getLuck(address arg1) {
    if sub_904c45b5[address(arg1)].field_64 <= (46296296296296 * block.timestamp) - (46296296296296 * sub_904c45b5[address(arg1)].field_0):
        return 0
    return (sub_904c45b5[address(arg1)].field_64 - (46296296296296 * block.timestamp) + (46296296296296 * sub_904c45b5[address(arg1)].field_0))
}

function setMaxProfit(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    maxProfit = arg1
}

function setMinHouse(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    sub_3fb7adb1 = arg1
}

function setLuckPrice(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    sub_ccf7ecd1 = arg1
}

function setMinHouseClassic(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    sub_1465a913 = arg1
}

function setMinSecondaryAmount(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    sub_02599810 = arg1
}

function setOraclizeGasLimit(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    oraclizeCallbackGas = arg1
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(owner);
}

function setOrcl(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    aAddress = arg1
    emit LogSetOrcl(aAddress);
}

function feedSecondaryPot(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    if arg1 > eth.balance(this.address):
        revert with 0, 'Nonsense amount!'
    if sub_62852616 + sub_3bf88187 + arg1 > eth.balance(this.address):
        revert with 0, 'Can't use what you don't own!'
    sub_62852616 += arg1
}

function withdrawTokens(address arg1, uint256 arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require ext_code.size(0x54cdc9d889c28f55f59f6b136822868c7d4726fc)
    call 0x54cdc9d889c28f55f59f6b136822868c7d4726fc.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed!'
}

function withdraw(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    if arg1 > eth.balance(this.address):
        revert with 0, 'Nonsense amount!'
    if sub_62852616 + sub_3bf88187 + arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't withdraw what you don't own!'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function disburseDividends(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    if arg1 > eth.balance(this.address):
        revert with 0, 'Nonsense amount!'
    if sub_62852616 + sub_3bf88187 + arg1 > eth.balance(this.address):
        revert with 0, 'Can't send what you don't own!'
    require ext_code.size(0x54cdc9d889c28f55f59f6b136822868c7d4726fc)
    call 0x54cdc9d889c28f55f59f6b136822868c7d4726fc.disburseDividends() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_cebb4989 += arg1
}

function topUpLuck(uint256 arg1) {
    if arg1 > 4 * 10^18:
        revert with 0, 'Can't top up more than 4 levels!'
    if not sub_ccf7ecd1:
        require ext_code.size(0x54cdc9d889c28f55f59f6b136822868c7d4726fc)
        call 0x54cdc9d889c28f55f59f6b136822868c7d4726fc.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0
    else:
        require sub_ccf7ecd1
        require arg1 * sub_ccf7ecd1 / sub_ccf7ecd1 == arg1
        require (arg1 * sub_ccf7ecd1) + 5 * 10^17 >= arg1 * sub_ccf7ecd1
        require ext_code.size(0x54cdc9d889c28f55f59f6b136822868c7d4726fc)
        call 0x54cdc9d889c28f55f59f6b136822868c7d4726fc.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), (arg1 * sub_ccf7ecd1) + 5 * 10^17 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed!'
    sub_904c45b5[address(msg.sender)].field_0 = uint64(block.timestamp)
    if sub_904c45b5[address(msg.sender)].field_64 <= (46296296296296 * block.timestamp) - (46296296296296 * sub_904c45b5[address(msg.sender)].field_0):
        if arg1 <= 5 * 10^18:
            sub_904c45b5[address(msg.sender)].field_64 = Mask(192, 0, arg1)
        else:
            sub_904c45b5[address(msg.sender)].field_64 = 0
            sub_904c45b5[address(msg.sender)].field_80 = 76293945312500
            sub_904c45b5[address(msg.sender)].field_128 = 0
    else:
        if sub_904c45b5[address(msg.sender)].field_64 - (46296296296296 * block.timestamp) + (46296296296296 * sub_904c45b5[address(msg.sender)].field_0) + arg1 <= 5 * 10^18:
            sub_904c45b5[address(msg.sender)].field_64 = Mask(192, 0, sub_904c45b5[address(msg.sender)].field_64 - (46296296296296 * block.timestamp) + (46296296296296 * sub_904c45b5[address(msg.sender)].field_0) + arg1)
        else:
            sub_904c45b5[address(msg.sender)].field_64 = 0
            sub_904c45b5[address(msg.sender)].field_80 = 76293945312500
            sub_904c45b5[address(msg.sender)].field_128 = 0
}

function setOraclizeGasPrice(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    oraclizeGasPrice = arg1
    if not stor2:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor2 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor4.length) = 0
            stor4.length.field_1 = 11
            stor4.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor4.length + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor2 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor4.length) = 0
                stor4.length.field_1 = 12
                stor4.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if not ext_code.size(stor2):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor2 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor4.length) = 0
                stor4.length.field_1 = 11
                stor4.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor2 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor4.length) = 0
                    stor4.length.field_1 = 12
                    stor4.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
    require ext_code.size(stor2)
    call stor2.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(stor3) != ext_call.return_data[12 len 20]:
        require ext_code.size(stor2)
        call stor2.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(address(stor3))
    call address(stor3).setCustomGasPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initOraclize() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require aAddress
            require ext_code.size(aAddress)
            call aAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    oraclizeCallbackGas = 200000
    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
        stor2 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        bool(stor4.length) = 0
        stor4.length.field_1 = 11
        stor4.length.field_8 = 'eth_mainnet' / 256
        idx = 0
        while stor4.length + 31 / 32 > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
        if not stor2:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor2 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor4.length) = 0
                stor4.length.field_1 = 11
                stor4.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor2 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor4.length) = 0
                    stor4.length.field_1 = 12
                    stor4.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if not ext_code.size(stor2):
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor2 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    bool(stor4.length) = 0
                    stor4.length.field_1 = 11
                    stor4.length.field_8 = 'eth_mainnet' / 256
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor2 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        bool(stor4.length) = 0
                        stor4.length.field_1 = 12
                        stor4.length.field_8 = 'eth_ropsten3' / 256
                        idx = 0
                        while stor4.length + 31 / 32 > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor2)
        call stor2.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(stor3) != ext_call.return_data[12 len 20]:
            require ext_code.size(stor2)
            call stor2.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
        require ext_code.size(address(stor3))
        call address(stor3).setProofType(bytes1 arg1) with:
             gas gas_remaining wei
            args 0x3000000000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
            stor2 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            bool(stor4.length) = 0
            stor4.length.field_1 = 12
            stor4.length.field_8 = 'eth_ropsten3' / 256
            idx = 0
            while stor4.length + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
            if not stor2:
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor2 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    bool(stor4.length) = 0
                    stor4.length.field_1 = 11
                    stor4.length.field_8 = 'eth_mainnet' / 256
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor2 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        bool(stor4.length) = 0
                        stor4.length.field_1 = 12
                        stor4.length.field_8 = 'eth_ropsten3' / 256
                        idx = 0
                        while stor4.length + 31 / 32 > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if not ext_code.size(stor2):
                    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                        stor2 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                        bool(stor4.length) = 0
                        stor4.length.field_1 = 11
                        stor4.length.field_8 = 'eth_mainnet' / 256
                        idx = 0
                        while stor4.length + 31 / 32 > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                            stor2 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                            bool(stor4.length) = 0
                            stor4.length.field_1 = 12
                            stor4.length.field_8 = 'eth_ropsten3' / 256
                            idx = 0
                            while stor4.length + 31 / 32 > idx:
                                stor4[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor2)
            call stor2.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(stor3) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor2)
                call stor2.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
            require ext_code.size(address(stor3))
            call address(stor3).setProofType(bytes1 arg1) with:
                 gas gas_remaining wei
                args 0x3000000000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function refundExpiredBet(bytes32 arg1) {
    if bets[arg1].field_64 + (6 * 3600) >= block.timestamp:
        revert with 0, 'Bet not expired!'
    if bets[arg1].field_128 <= 0:
        revert with 0, 'Bet invalid!'
    emit RefundAttempt(arg1);
    if bets[arg1].field_32 <= 0:
        revert with 0, 'Nonsense bet!'
    if bets[arg1].field_32 > bets[arg1].field_48:
        revert with 0, 'Nonsense bet!'
    require bets[arg1].field_32
    if bets[arg1].field_0 == 1:
        if bets[arg1].field_128 / 125 >= (oraclizeGasPrice * oraclizeCallbackGas) + sub_1465a913:
            if bets[arg1].field_128 < bets[arg1].field_128 / 125:
                revert with 0, 'Bet doesn't cover minimum fee!'
            bets[arg1].field_0 = 0
            if bets[arg1].field_128 <= 0:
                emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 125 * bets[arg1].field_48) / bets[arg1].field_32:
                    sub_3bf88187 = 0
                else:
                    sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 125 * bets[arg1].field_48) / bets[arg1].field_32
            else:
                call bets[arg1].field_256 with:
                   value bets[arg1].field_128 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit FailedPayment(arg1, bets[arg1].field_128);
                emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 125 * bets[arg1].field_48) / bets[arg1].field_32:
                    sub_3bf88187 = 0
                else:
                    sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 125 * bets[arg1].field_48) / bets[arg1].field_32
        else:
            if bets[arg1].field_128 < (oraclizeGasPrice * oraclizeCallbackGas) + sub_1465a913:
                revert with 0, 'Bet doesn't cover minimum fee!'
            bets[arg1].field_0 = 0
            if bets[arg1].field_128 <= 0:
                emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_1465a913 * bets[arg1].field_48) / bets[arg1].field_32:
                    sub_3bf88187 = 0
                else:
                    sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_1465a913 * bets[arg1].field_48) / bets[arg1].field_32
            else:
                call bets[arg1].field_256 with:
                   value bets[arg1].field_128 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit FailedPayment(arg1, bets[arg1].field_128);
                emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_1465a913 * bets[arg1].field_48) / bets[arg1].field_32:
                    sub_3bf88187 = 0
                else:
                    sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_1465a913 * bets[arg1].field_48) / bets[arg1].field_32
    else:
        if bets[arg1].field_128 / 70 >= (oraclizeGasPrice * oraclizeCallbackGas) + sub_3fb7adb1:
            if bets[arg1].field_128 < sub_02599810:
                if bets[arg1].field_128 < bets[arg1].field_128 / 70:
                    revert with 0, 'Bet doesn't cover minimum fee!'
                bets[arg1].field_0 = 0
                if bets[arg1].field_128 <= 0:
                    emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                    if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 70 * bets[arg1].field_48) / bets[arg1].field_32:
                        sub_3bf88187 = 0
                    else:
                        sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 70 * bets[arg1].field_48) / bets[arg1].field_32
                else:
                    call bets[arg1].field_256 with:
                       value bets[arg1].field_128 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(arg1, bets[arg1].field_128);
                    emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                    if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 70 * bets[arg1].field_48) / bets[arg1].field_32:
                        sub_3bf88187 = 0
                    else:
                        sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 70 * bets[arg1].field_48) / bets[arg1].field_32
            else:
                if bets[arg1].field_128 < (bets[arg1].field_128 / 70) + (bets[arg1].field_128 / 400):
                    revert with 0, 'Bet doesn't cover minimum fee!'
                bets[arg1].field_0 = 0
                if bets[arg1].field_128 <= 0:
                    emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                    if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 70 * bets[arg1].field_48) - (bets[arg1].field_128 / 400 * bets[arg1].field_48) / bets[arg1].field_32:
                        sub_3bf88187 = 0
                    else:
                        sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 70 * bets[arg1].field_48) - (bets[arg1].field_128 / 400 * bets[arg1].field_48) / bets[arg1].field_32
                else:
                    call bets[arg1].field_256 with:
                       value bets[arg1].field_128 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(arg1, bets[arg1].field_128);
                    emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                    if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 70 * bets[arg1].field_48) - (bets[arg1].field_128 / 400 * bets[arg1].field_48) / bets[arg1].field_32:
                        sub_3bf88187 = 0
                    else:
                        sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (bets[arg1].field_128 / 70 * bets[arg1].field_48) - (bets[arg1].field_128 / 400 * bets[arg1].field_48) / bets[arg1].field_32
        else:
            if bets[arg1].field_128 < sub_02599810:
                if bets[arg1].field_128 < (oraclizeGasPrice * oraclizeCallbackGas) + sub_3fb7adb1:
                    revert with 0, 'Bet doesn't cover minimum fee!'
                bets[arg1].field_0 = 0
                if bets[arg1].field_128 <= 0:
                    emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                    if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_3fb7adb1 * bets[arg1].field_48) / bets[arg1].field_32:
                        sub_3bf88187 = 0
                    else:
                        sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_3fb7adb1 * bets[arg1].field_48) / bets[arg1].field_32
                else:
                    call bets[arg1].field_256 with:
                       value bets[arg1].field_128 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(arg1, bets[arg1].field_128);
                    emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                    if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_3fb7adb1 * bets[arg1].field_48) / bets[arg1].field_32:
                        sub_3bf88187 = 0
                    else:
                        sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_3fb7adb1 * bets[arg1].field_48) / bets[arg1].field_32
            else:
                if bets[arg1].field_128 < (oraclizeGasPrice * oraclizeCallbackGas) + sub_3fb7adb1 + (bets[arg1].field_128 / 400):
                    revert with 0, 'Bet doesn't cover minimum fee!'
                bets[arg1].field_0 = 0
                if bets[arg1].field_128 <= 0:
                    emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                    if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_3fb7adb1 * bets[arg1].field_48) - (bets[arg1].field_128 / 400 * bets[arg1].field_48) / bets[arg1].field_32:
                        sub_3bf88187 = 0
                    else:
                        sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_3fb7adb1 * bets[arg1].field_48) - (bets[arg1].field_128 / 400 * bets[arg1].field_48) / bets[arg1].field_32
                else:
                    call bets[arg1].field_256 with:
                       value bets[arg1].field_128 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(arg1, bets[arg1].field_128);
                    emit BetFinalized(arg1, bets[arg1].field_0, bets[arg1].field_128, bets[arg1].field_256);
                    if sub_3bf88187 < (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_3fb7adb1 * bets[arg1].field_48) - (bets[arg1].field_128 / 400 * bets[arg1].field_48) / bets[arg1].field_32:
                        sub_3bf88187 = 0
                    else:
                        sub_3bf88187 -= (bets[arg1].field_128 * bets[arg1].field_48) - (oraclizeGasPrice * oraclizeCallbackGas * bets[arg1].field_48) - (sub_3fb7adb1 * bets[arg1].field_48) - (bets[arg1].field_128 / 400 * bets[arg1].field_48) / bets[arg1].field_32
}



}
