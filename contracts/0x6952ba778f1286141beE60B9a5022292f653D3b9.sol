contract main {




// =====================  Runtime code  =====================


const decimals = 18

const sub_ae995b0a(?) = 5

const sub_fec4ff17(?) = 1


address sub_c0cac845Address;
array of uint256 stor1;
uint8 stage; offset 160
address registryAddress;
uint256 stor2;
address issuerAddress;
uint32 stor4;
address custodianAddress;
uint256 stor4;
uint256 stor5;
uint256 totalSupply;
uint256 sub_a51483f3;
mapping of uint256 sub_a705f893;
uint256 sub_1c00930b;
mapping of uint256 sub_1c031dd8;
mapping of uint256 unclaimedPayoutTotals;
uint8 paused;
uint8 tokenInitialized; offset 8
uint8 sub_394d8f49; offset 16
uint8 sub_ed4ae0e9; offset 24
uint256 stor13; offset 8
uint256 sub_d8a3819b;
uint256 sub_e531e946;
uint256 sub_2d0ab86d;
uint256 sub_848f4925;
uint256 sub_d17ce7a9;
uint256 sub_4449fe70;
uint256 sub_2cbaef16;
uint256 stor21;
uint256 stor22;
uint256 totalPerTokenPayout;
address owner;
mapping of uint256 claimedPerTokenPayouts;
mapping of uint256 sub_a4ced09d;
mapping of uint256 sub_13b44d35;
mapping of uint256 allowance;

function sub_13b44d35(?) {
    return sub_13b44d35[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_1c00930b(?) {
    return sub_1c00930b
}

function sub_1c031dd8(?) {
    return sub_1c031dd8[arg1]
}

function issuer() {
    return issuerAddress
}

function sub_2cbaef16(?) {
    return sub_2cbaef16
}

function sub_2d0ab86d(?) {
    return sub_2d0ab86d
}

function custodian() {
    return address(custodianAddress)
}

function sub_394d8f49(?) {
    return bool(sub_394d8f49)
}

function sub_4449fe70(?) {
    return sub_4449fe70
}

function totalPerTokenPayout() {
    return totalPerTokenPayout
}

function tokenInitialized() {
    return bool(tokenInitialized)
}

function paused() {
    return bool(paused)
}

function registry() {
    return registryAddress
}

function sub_848f4925(?) {
    return sub_848f4925
}

function owner() {
    return owner
}

function sub_a4ced09d(?) {
    return sub_a4ced09d[arg1]
}

function sub_a51483f3(?) {
    return sub_a51483f3
}

function sub_a705f893(?) {
    return sub_a705f893[arg1]
}

function stage() {
    require stage <= 8
    return stage
}

function sub_c0cac845(?) {
    return sub_c0cac845Address
}

function sub_c0ee907c(?) {
    return address(stor1.length)
}

function claimedPerTokenPayouts(address arg1) {
    return claimedPerTokenPayouts[arg1]
}

function unclaimedPayoutTotals(address arg1) {
    return unclaimedPayoutTotals[arg1]
}

function sub_d17ce7a9(?) {
    return sub_d17ce7a9
}

function sub_d8a3819b(?) {
    return sub_d8a3819b
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e531e946(?) {
    return sub_e531e946
}

function sub_ed4ae0e9(?) {
    return bool(sub_ed4ae0e9)
}

function calculateFee(uint256 arg1) {
    require 5 * arg1 / 5 == arg1
    return (5 * arg1 / 1000)
}

function sub_1bd2f1d6(?) {
    require msg.sender == issuerAddress
    require stage <= 8
    require not stage
    require arg1
    require arg1 != stor22
    stor22 = arg1
}

function approve(address arg1, uint256 arg2) {
    require not paused
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function updateName(bytes32 arg1) {
    require msg.sender == issuerAddress
    require stage <= 8
    require not stage
    require arg1
    require arg1 != stor21
    stor21 = arg1
}

function sub_1dfab65b(?) {
    require msg.sender == issuerAddress
    require stage <= 8
    require not stage
    require arg1
    require arg1 != issuerAddress
    issuerAddress = arg1
}

function updateTotalSupply(uint256 arg1) {
    require msg.sender == issuerAddress
    require stage <= 8
    require not stage
    require arg1 >= 10^18
    require sub_4449fe70 < arg1
    require arg1 != totalSupply
    totalSupply = arg1
}

function _fallback() payable {
    delegate stor1.length with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    return ext_call.return_data[0 len return_data.size]
}

function increaseApproval(address arg1, uint256 arg2) {
    require not paused
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not paused
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function pause() {
    mem[202 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[202 len 10])
    require ext_call.success
    owner = address(ext_call.return_data[0])
    require msg.sender == owner
    require not paused
    paused = 1
    emit Pause()
}

function unpause() {
    mem[202 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[202 len 10])
    require ext_call.success
    owner = address(ext_call.return_data[0])
    require msg.sender == owner
    require paused
    require stage <= 8
    require stage == 7
    paused = 0
    emit Unpause()
}

function isWhitelisted(address arg1) {
    mem[201 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[201 len 9])
    require ext_call.success
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('whitelisted(address)')) >> 224
            gas gas_remaining wei
           args arg1
    return bool(ext_call.return_data[0])
}

function sub_29c60939(?) {
    require msg.sender == issuerAddress
    require stage <= 8
    require not stage
    require sub_d8a3819b > block.timestamp
    stage = 1
    mem[201 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[201 len 9])
    require ext_call.success
    mem[305 len 64] = 576014340, 0, 1, mem[305 len 28]
    mem[337] = mem[365 len 4]
    call address(ext_call.return_data[0]).mem[305 len 4] with:
         gas gas_remaining wei
        args mem[309 len 60]
    return 1
}

function sub_fdfd9c1d(?) {
    require msg.sender == address(custodianAddress)
    mem[201 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[201 len 9])
    require ext_call.success
    mem[337 len 96] = 1487894427, Mask(224, 0, stor4), uint32(stor4), address(arg1), mem[337 len 28]
    mem[401] = mem[429 len 4]
    call address(ext_call.return_data[0]).mem[337 len 4] with:
         gas gas_remaining wei
        args mem[341 len 92]
    require arg1
    require arg1 != address(custodianAddress)
    address(custodianAddress) = arg1
    return 1
}

function sub_e678b66c(?) {
    require stage <= 8
    if stage < 7:
        return 0
    if sub_a705f893[address(arg1)] > 0:
        return sub_a705f893[address(arg1)]
    if sub_1c031dd8[address(arg1)] <= 0:
        return 0
    require sub_a51483f3 <= totalSupply
    if not sub_1c031dd8[address(arg1)]:
        if sub_1c00930b:
            return (0 / sub_1c00930b)
    else:
        if sub_1c031dd8[address(arg1)]:
            if (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c031dd8[address(arg1)] == totalSupply - sub_a51483f3:
                if sub_1c00930b:
                    return ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b)
    revert
}

function sub_b3d7149e(?) {
    require not tokenInitialized
    require arg1
    require arg1 != stor21
    stor21 = arg1
    require arg2
    require arg2 != stor22
    stor22 = arg2
    require arg3
    require arg3 != issuerAddress
    issuerAddress = arg3
    require arg4
    require arg4 != address(custodianAddress)
    address(custodianAddress) = arg4
    require arg6 >= 10^18
    require sub_4449fe70 < arg6
    require arg6 != totalSupply
    totalSupply = arg6
    mem[202 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[202 len 10])
    require ext_call.success
    owner = address(ext_call.return_data[0])
    registryAddress = arg5
    paused = 1
    stor13 = 1
    return 1
}

function getContractAddress(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 'getContractAddress32(bytes32)'
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 192 len arg1.length % 32]
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    require ext_call.success
    return address(ext_call.return_data[0])
}

function name() {
    mem[96] = 32
    mem[64] = 160
    mem[128 len 1024] = code.data[19340 len 1024]
    mem[128] = stor21
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 128]):
            idx = idx + 1
            continue 
        mem[96] = idx
        mem[160] = 32
        mem[192] = idx
        s = 0
        while s < idx:
            mem[s + 224] = mem[s + 128]
            s = s + 32
            continue 
        if not idx % 32:
            return memory
              from mem[64]
               len idx + -mem[64] + 224
        mem[floor32(idx) + 224] = mem[floor32(idx) + -(idx % 32) + 256 len idx % 32]
        return memory
          from mem[64]
           len floor32(idx) + -mem[64] + 256
    mem[96] = idx
    mem[160] = 32
    mem[192] = idx
    s = 0
    while s < idx:
        mem[s + 224] = mem[s + 128]
        s = s + 32
        continue 
    if not idx % 32:
        return memory
          from mem[64]
           len idx + -mem[64] + 224
    mem[floor32(idx) + 224] = mem[floor32(idx) + -(idx % 32) + 256 len idx % 32]
    return memory
      from mem[64]
       len floor32(idx) + -mem[64] + 256
}

function symbol() {
    mem[96] = 32
    mem[64] = 160
    mem[128 len 1024] = code.data[19340 len 1024]
    mem[128] = stor22
    idx = 0
    while idx < 32:
        require idx < 32
        if Mask(8, 248, mem[idx + 128]):
            idx = idx + 1
            continue 
        mem[96] = idx
        mem[160] = 32
        mem[192] = idx
        s = 0
        while s < idx:
            mem[s + 224] = mem[s + 128]
            s = s + 32
            continue 
        if not idx % 32:
            return memory
              from mem[64]
               len idx + -mem[64] + 224
        mem[floor32(idx) + 224] = mem[floor32(idx) + -(idx % 32) + 256 len idx % 32]
        return memory
          from mem[64]
           len floor32(idx) + -mem[64] + 256
    mem[96] = idx
    mem[160] = 32
    mem[192] = idx
    s = 0
    while s < idx:
        mem[s + 224] = mem[s + 128]
        s = s + 32
        continue 
    if not idx % 32:
        return memory
          from mem[64]
           len idx + -mem[64] + 224
    mem[floor32(idx) + 224] = mem[floor32(idx) + -(idx % 32) + 256 len idx % 32]
    return memory
      from mem[64]
       len floor32(idx) + -mem[64] + 256
}

function sub_7e350f19(?) {
    mem[96] = stor5
    idx = 96
    s = 5
    while 160 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    mem[160] = 64
    mem[64] = 256
    mem[192 len 2048] = code.data[19340 len 2048]
    mem[192] = stor5
    mem[224] = mem[128]
    idx = 0
    while idx < 64:
        require idx < 64
        if Mask(8, 248, mem[idx + 192]):
            idx = idx + 1
            continue 
        mem[160] = idx
        mem[256] = 32
        mem[288] = idx
        s = 0
        while s < idx:
            mem[s + 320] = mem[s + 192]
            s = s + 32
            continue 
        if not idx % 32:
            return memory
              from 256
               len idx + 64
        mem[floor32(idx) + 320] = mem[floor32(idx) + -(idx % 32) + 352 len idx % 32]
        return memory
          from 256
           len floor32(idx) + 96
    mem[160] = idx
    mem[256] = 32
    mem[288] = idx
    s = 0
    while s < idx:
        mem[s + 320] = mem[s + 192]
        s = s + 32
        continue 
    if not idx % 32:
        return memory
          from 256
           len idx + 64
    mem[floor32(idx) + 320] = mem[floor32(idx) + -(idx % 32) + 352 len idx % 32]
    return memory
      from 256
       len floor32(idx) + 96
}

function terminate() {
    mem[202 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[202 len 10])
    require ext_call.success
    owner = address(ext_call.return_data[0])
    if msg.sender == address(custodianAddress):
        require stage <= 8
        require stage == 7
        stage = 8
        mem[343 len 0] = None
    else:
        require msg.sender == owner
        require stage <= 8
        require stage == 7
        stage = 8
        mem[343 len 0] = None
        mem[343 len 23] = mem[343 len 14], Mask(72, 0, 'PoaLogger')
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[343 len 9])
    require ext_call.success
    mem[447 len 64] = 576014340, 0, 0, mem[447 len 28]
    mem[479] = mem[507 len 4]
    call address(ext_call.return_data[0]).mem[447 len 4] with:
         gas gas_remaining wei
        args mem[451 len 60]
    paused = 1
    mem[552 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[552 len 9])
    require ext_call.success
    mem[624] = 0, mem[624 len 28]
    mem[624] = mem[652 len 4]
    call address(ext_call.return_data[0]).mem[624 len 4] with:
         gas gas_remaining wei
        args mem[628 len 28]
    return 1
}

function balanceOf(address arg1) {
    require stage <= 8
    if stage < 7:
        if sub_13b44d35[address(arg1)] >= 0:
            if sub_a4ced09d[address(arg1)] <= sub_13b44d35[address(arg1)]:
                return (sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)])
    else:
        if sub_a705f893[address(arg1)] > 0:
            if sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] >= sub_a705f893[address(arg1)]:
                if sub_a4ced09d[address(arg1)] <= sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)]:
                    return (sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)])
        else:
            if sub_1c031dd8[address(arg1)] <= 0:
                if sub_13b44d35[address(arg1)] >= 0:
                    if sub_a4ced09d[address(arg1)] <= sub_13b44d35[address(arg1)]:
                        return (sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)])
            else:
                if sub_a51483f3 <= totalSupply:
                    if not sub_1c031dd8[address(arg1)]:
                        if sub_1c00930b:
                            if (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] >= 0 / sub_1c00930b:
                                if sub_a4ced09d[address(arg1)] <= (0 / sub_1c00930b) + sub_13b44d35[address(arg1)]:
                                    return ((0 / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)])
                    else:
                        if sub_1c031dd8[address(arg1)]:
                            if (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c031dd8[address(arg1)] == totalSupply - sub_a51483f3:
                                if sub_1c00930b:
                                    if ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] >= (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b:
                                        if sub_a4ced09d[address(arg1)] <= ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)]:
                                            return (((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)])
    revert
}

function currentPayout(address arg1, bool arg2) {
    if not totalPerTokenPayout:
        if not arg2:
            return 0
        if unclaimedPayoutTotals[address(arg1)] >= 0:
            return unclaimedPayoutTotals[address(arg1)]
    else:
        if claimedPerTokenPayouts[address(arg1)] <= totalPerTokenPayout:
            if stage <= 8:
                if stage < 7:
                    if sub_13b44d35[address(arg1)] >= 0:
                        if sub_a4ced09d[address(arg1)] <= sub_13b44d35[address(arg1)]:
                            if not sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                                if not arg2:
                                    return 0
                                if unclaimedPayoutTotals[address(arg1)] >= 0:
                                    return unclaimedPayoutTotals[address(arg1)]
                            else:
                                if sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                                    if (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]:
                                        if not arg2:
                                            return ((totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18)
                                        if ((totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) + unclaimedPayoutTotals[address(arg1)] >= (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18:
                                            return (((totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) + unclaimedPayoutTotals[address(arg1)])
                else:
                    if sub_a705f893[address(arg1)] > 0:
                        if sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] >= sub_a705f893[address(arg1)]:
                            if sub_a4ced09d[address(arg1)] <= sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)]:
                                if not sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                                    if not arg2:
                                        return 0
                                    if unclaimedPayoutTotals[address(arg1)] >= 0:
                                        return unclaimedPayoutTotals[address(arg1)]
                                else:
                                    if sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                                        if (totalPerTokenPayout * sub_a705f893[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_a705f893[address(arg1)]) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]:
                                            if not arg2:
                                                return ((totalPerTokenPayout * sub_a705f893[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_a705f893[address(arg1)]) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18)
                                            if ((totalPerTokenPayout * sub_a705f893[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_a705f893[address(arg1)]) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) + unclaimedPayoutTotals[address(arg1)] >= (totalPerTokenPayout * sub_a705f893[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_a705f893[address(arg1)]) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18:
                                                return (((totalPerTokenPayout * sub_a705f893[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_a705f893[address(arg1)]) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) + unclaimedPayoutTotals[address(arg1)])
                    else:
                        if sub_1c031dd8[address(arg1)] <= 0:
                            if sub_13b44d35[address(arg1)] >= 0:
                                if sub_a4ced09d[address(arg1)] <= sub_13b44d35[address(arg1)]:
                                    if not sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                                        if not arg2:
                                            return 0
                                        if unclaimedPayoutTotals[address(arg1)] >= 0:
                                            return unclaimedPayoutTotals[address(arg1)]
                                    else:
                                        if sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                                            if (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]:
                                                if not arg2:
                                                    return ((totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18)
                                                if ((totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) + unclaimedPayoutTotals[address(arg1)] >= (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18:
                                                    return (((totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) + unclaimedPayoutTotals[address(arg1)])
                        else:
                            if sub_a51483f3 <= totalSupply:
                                if not sub_1c031dd8[address(arg1)]:
                                    if sub_1c00930b:
                                        if (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] >= 0 / sub_1c00930b:
                                            if sub_a4ced09d[address(arg1)] <= (0 / sub_1c00930b) + sub_13b44d35[address(arg1)]:
                                                if not (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                                                    if not arg2:
                                                        return 0
                                                    if unclaimedPayoutTotals[address(arg1)] >= 0:
                                                        return unclaimedPayoutTotals[address(arg1)]
                                                else:
                                                    if (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                                                        if (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]:
                                                            if not arg2:
                                                                return ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18)
                                                            if ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) + unclaimedPayoutTotals[address(arg1)] >= (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18:
                                                                return (((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) + unclaimedPayoutTotals[address(arg1)])
                                else:
                                    if sub_1c031dd8[address(arg1)]:
                                        if (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c031dd8[address(arg1)] == totalSupply - sub_a51483f3:
                                            if sub_1c00930b:
                                                if ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] >= (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b:
                                                    if sub_a4ced09d[address(arg1)] <= ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)]:
                                                        if not ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                                                            if not arg2:
                                                                return 0
                                                            if unclaimedPayoutTotals[address(arg1)] >= 0:
                                                                return unclaimedPayoutTotals[address(arg1)]
                                                        else:
                                                            if ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                                                                if (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]:
                                                                    if not arg2:
                                                                        return ((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18)
                                                                    if ((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) + unclaimedPayoutTotals[address(arg1)] >= (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18:
                                                                        return (((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) + unclaimedPayoutTotals[address(arg1)])
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    mem[201 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[201 len 9])
    require ext_call.success
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('whitelisted(address)')) >> 224
            gas gas_remaining wei
           args arg2
    require ext_call.return_data[0]
    mem[378 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[378 len 9])
    require ext_call.success
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('whitelisted(address)')) >> 224
            gas gas_remaining wei
           args arg1
    require ext_call.return_data[0]
    if not totalPerTokenPayout:
        require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
    else:
        require claimedPerTokenPayouts[address(arg1)] <= totalPerTokenPayout
        require stage <= 8
        if stage < 7:
            require sub_13b44d35[address(arg1)] >= 0
            require sub_a4ced09d[address(arg1)] <= sub_13b44d35[address(arg1)]
            if not sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
            else:
                require sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
                require (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]
                require unclaimedPayoutTotals[address(arg1)] + ((totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) >= unclaimedPayoutTotals[address(arg1)]
                unclaimedPayoutTotals[address(arg1)] += (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18
        else:
            if sub_a705f893[address(arg1)] > 0:
                require sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] >= sub_a705f893[address(arg1)]
                require sub_a4ced09d[address(arg1)] <= sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)]
                if not sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                    require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
                else:
                    require sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
                    require (totalPerTokenPayout * sub_a705f893[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_a705f893[address(arg1)]) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]
                    require unclaimedPayoutTotals[address(arg1)] + ((totalPerTokenPayout * sub_a705f893[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_a705f893[address(arg1)]) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) >= unclaimedPayoutTotals[address(arg1)]
                    unclaimedPayoutTotals[address(arg1)] += (totalPerTokenPayout * sub_a705f893[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_a705f893[address(arg1)]) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18
            else:
                if sub_1c031dd8[address(arg1)] <= 0:
                    require sub_13b44d35[address(arg1)] >= 0
                    require sub_a4ced09d[address(arg1)] <= sub_13b44d35[address(arg1)]
                    if not sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                        require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
                    else:
                        require sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
                        require (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]
                        require unclaimedPayoutTotals[address(arg1)] + ((totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) >= unclaimedPayoutTotals[address(arg1)]
                        unclaimedPayoutTotals[address(arg1)] += (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18
                else:
                    require sub_a51483f3 <= totalSupply
                    if not sub_1c031dd8[address(arg1)]:
                        require sub_1c00930b
                        require (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] >= 0 / sub_1c00930b
                        require sub_a4ced09d[address(arg1)] <= (0 / sub_1c00930b) + sub_13b44d35[address(arg1)]
                        if not (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                            require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
                        else:
                            require (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
                            require (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]
                            require unclaimedPayoutTotals[address(arg1)] + ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) >= unclaimedPayoutTotals[address(arg1)]
                            unclaimedPayoutTotals[address(arg1)] += (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18
                    else:
                        require sub_1c031dd8[address(arg1)]
                        require (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c031dd8[address(arg1)] == totalSupply - sub_a51483f3
                        require sub_1c00930b
                        require ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] >= (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b
                        require sub_a4ced09d[address(arg1)] <= ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)]
                        if not ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                            require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
                        else:
                            require ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
                            require (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]
                            require unclaimedPayoutTotals[address(arg1)] + ((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) >= unclaimedPayoutTotals[address(arg1)]
                            unclaimedPayoutTotals[address(arg1)] += (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18
    claimedPerTokenPayouts[address(arg1)] = totalPerTokenPayout
    if not totalPerTokenPayout:
        require unclaimedPayoutTotals[address(arg2)] >= unclaimedPayoutTotals[address(arg2)]
    else:
        require claimedPerTokenPayouts[address(arg2)] <= totalPerTokenPayout
        require stage <= 8
        if stage < 7:
            require sub_13b44d35[address(arg2)] >= 0
            require sub_a4ced09d[address(arg2)] <= sub_13b44d35[address(arg2)]
            if not sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)]:
                require unclaimedPayoutTotals[address(arg2)] >= unclaimedPayoutTotals[address(arg2)]
            else:
                require sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)]
                require (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg2)]
                require unclaimedPayoutTotals[address(arg2)] + ((totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / 10^18) >= unclaimedPayoutTotals[address(arg2)]
                unclaimedPayoutTotals[address(arg2)] += (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / 10^18
        else:
            if sub_a705f893[address(arg2)] > 0:
                require sub_a705f893[address(arg2)] + sub_13b44d35[address(arg2)] >= sub_a705f893[address(arg2)]
                require sub_a4ced09d[address(arg2)] <= sub_a705f893[address(arg2)] + sub_13b44d35[address(arg2)]
                if not sub_a705f893[address(arg2)] + sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)]:
                    require unclaimedPayoutTotals[address(arg2)] >= unclaimedPayoutTotals[address(arg2)]
                else:
                    require sub_a705f893[address(arg2)] + sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)]
                    require (totalPerTokenPayout * sub_a705f893[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_a705f893[address(arg2)]) + (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / sub_a705f893[address(arg2)] + sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg2)]
                    require unclaimedPayoutTotals[address(arg2)] + ((totalPerTokenPayout * sub_a705f893[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_a705f893[address(arg2)]) + (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / 10^18) >= unclaimedPayoutTotals[address(arg2)]
                    unclaimedPayoutTotals[address(arg2)] += (totalPerTokenPayout * sub_a705f893[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_a705f893[address(arg2)]) + (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / 10^18
            else:
                if sub_1c031dd8[address(arg2)] <= 0:
                    require sub_13b44d35[address(arg2)] >= 0
                    require sub_a4ced09d[address(arg2)] <= sub_13b44d35[address(arg2)]
                    if not sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)]:
                        require unclaimedPayoutTotals[address(arg2)] >= unclaimedPayoutTotals[address(arg2)]
                    else:
                        require sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)]
                        require (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg2)]
                        require unclaimedPayoutTotals[address(arg2)] + ((totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / 10^18) >= unclaimedPayoutTotals[address(arg2)]
                        unclaimedPayoutTotals[address(arg2)] += (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / 10^18
                else:
                    require sub_a51483f3 <= totalSupply
                    if not sub_1c031dd8[address(arg2)]:
                        require sub_1c00930b
                        require (0 / sub_1c00930b) + sub_13b44d35[address(arg2)] >= 0 / sub_1c00930b
                        require sub_a4ced09d[address(arg2)] <= (0 / sub_1c00930b) + sub_13b44d35[address(arg2)]
                        if not (0 / sub_1c00930b) + sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)]:
                            require unclaimedPayoutTotals[address(arg2)] >= unclaimedPayoutTotals[address(arg2)]
                        else:
                            require (0 / sub_1c00930b) + sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)]
                            require (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg2)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / (0 / sub_1c00930b) + sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg2)]
                            require unclaimedPayoutTotals[address(arg2)] + ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg2)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / 10^18) >= unclaimedPayoutTotals[address(arg2)]
                            unclaimedPayoutTotals[address(arg2)] += (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg2)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / 10^18
                    else:
                        require sub_1c031dd8[address(arg2)]
                        require (totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c031dd8[address(arg2)] == totalSupply - sub_a51483f3
                        require sub_1c00930b
                        require ((totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b) + sub_13b44d35[address(arg2)] >= (totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b
                        require sub_a4ced09d[address(arg2)] <= ((totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b) + sub_13b44d35[address(arg2)]
                        if not ((totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b) + sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)]:
                            require unclaimedPayoutTotals[address(arg2)] >= unclaimedPayoutTotals[address(arg2)]
                        else:
                            require ((totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b) + sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)]
                            require (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg2)] * (totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / ((totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b) + sub_13b44d35[address(arg2)] - sub_a4ced09d[address(arg2)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg2)]
                            require unclaimedPayoutTotals[address(arg2)] + ((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg2)] * (totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / 10^18) >= unclaimedPayoutTotals[address(arg2)]
                            unclaimedPayoutTotals[address(arg2)] += (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg2)] * (totalSupply * sub_1c031dd8[address(arg2)]) - (sub_a51483f3 * sub_1c031dd8[address(arg2)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg2)]) - (claimedPerTokenPayouts[address(arg2)] * sub_13b44d35[address(arg2)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg2)]) + (claimedPerTokenPayouts[address(arg2)] * sub_a4ced09d[address(arg2)]) / 10^18
    claimedPerTokenPayouts[address(arg2)] = totalPerTokenPayout
    require arg2
    require stage <= 8
    if stage < 7:
        require sub_13b44d35[address(arg1)] >= 0
        require sub_a4ced09d[address(arg1)] <= sub_13b44d35[address(arg1)]
        require arg3 <= sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
    else:
        if sub_a705f893[address(arg1)] > 0:
            require sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] >= sub_a705f893[address(arg1)]
            require sub_a4ced09d[address(arg1)] <= sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)]
            require arg3 <= sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
        else:
            if sub_1c031dd8[address(arg1)] <= 0:
                require sub_13b44d35[address(arg1)] >= 0
                require sub_a4ced09d[address(arg1)] <= sub_13b44d35[address(arg1)]
                require arg3 <= sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
            else:
                require sub_a51483f3 <= totalSupply
                if not sub_1c031dd8[address(arg1)]:
                    require sub_1c00930b
                    require (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] >= 0 / sub_1c00930b
                    require sub_a4ced09d[address(arg1)] <= (0 / sub_1c00930b) + sub_13b44d35[address(arg1)]
                    require arg3 <= (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
                else:
                    require sub_1c031dd8[address(arg1)]
                    require (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c031dd8[address(arg1)] == totalSupply - sub_a51483f3
                    require sub_1c00930b
                    require ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] >= (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b
                    require sub_a4ced09d[address(arg1)] <= ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)]
                    require arg3 <= ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require sub_a4ced09d[address(arg1)] + arg3 >= sub_a4ced09d[address(arg1)]
    sub_a4ced09d[address(arg1)] += arg3
    require sub_13b44d35[address(arg2)] + arg3 >= sub_13b44d35[address(arg2)]
    sub_13b44d35[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not paused
    mem[201 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[201 len 9])
    require ext_call.success
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('whitelisted(address)')) >> 224
            gas gas_remaining wei
           args arg1
    require ext_call.return_data[0]
    mem[378 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[378 len 9])
    require ext_call.success
    staticcall ext_call.return_data[0] with:
         funct Mask(32, 224, sha3('whitelisted(address)')) >> 224
            gas gas_remaining wei
           args msg.sender
    require ext_call.return_data[0]
    if not totalPerTokenPayout:
        require unclaimedPayoutTotals[address(msg.sender)] >= unclaimedPayoutTotals[address(msg.sender)]
    else:
        require claimedPerTokenPayouts[address(msg.sender)] <= totalPerTokenPayout
        require stage <= 8
        if stage < 7:
            require sub_13b44d35[address(msg.sender)] >= 0
            require sub_a4ced09d[address(msg.sender)] <= sub_13b44d35[address(msg.sender)]
            if not sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                require unclaimedPayoutTotals[address(msg.sender)] >= unclaimedPayoutTotals[address(msg.sender)]
            else:
                require sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
                require (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
                require unclaimedPayoutTotals[address(msg.sender)] + ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) >= unclaimedPayoutTotals[address(msg.sender)]
                unclaimedPayoutTotals[address(msg.sender)] += (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
        else:
            if sub_a705f893[address(msg.sender)] > 0:
                require sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] >= sub_a705f893[address(msg.sender)]
                require sub_a4ced09d[address(msg.sender)] <= sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)]
                if not sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                    require unclaimedPayoutTotals[address(msg.sender)] >= unclaimedPayoutTotals[address(msg.sender)]
                else:
                    require sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
                    require (totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
                    require unclaimedPayoutTotals[address(msg.sender)] + ((totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) >= unclaimedPayoutTotals[address(msg.sender)]
                    unclaimedPayoutTotals[address(msg.sender)] += (totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
            else:
                if sub_1c031dd8[address(msg.sender)] <= 0:
                    require sub_13b44d35[address(msg.sender)] >= 0
                    require sub_a4ced09d[address(msg.sender)] <= sub_13b44d35[address(msg.sender)]
                    if not sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                        require unclaimedPayoutTotals[address(msg.sender)] >= unclaimedPayoutTotals[address(msg.sender)]
                    else:
                        require sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
                        require (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
                        require unclaimedPayoutTotals[address(msg.sender)] + ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) >= unclaimedPayoutTotals[address(msg.sender)]
                        unclaimedPayoutTotals[address(msg.sender)] += (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
                else:
                    require sub_a51483f3 <= totalSupply
                    if not sub_1c031dd8[address(msg.sender)]:
                        require sub_1c00930b
                        require (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] >= 0 / sub_1c00930b
                        require sub_a4ced09d[address(msg.sender)] <= (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)]
                        if not (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                            require unclaimedPayoutTotals[address(msg.sender)] >= unclaimedPayoutTotals[address(msg.sender)]
                        else:
                            require (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
                            require (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
                            require unclaimedPayoutTotals[address(msg.sender)] + ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) >= unclaimedPayoutTotals[address(msg.sender)]
                            unclaimedPayoutTotals[address(msg.sender)] += (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
                    else:
                        require sub_1c031dd8[address(msg.sender)]
                        require (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c031dd8[address(msg.sender)] == totalSupply - sub_a51483f3
                        require sub_1c00930b
                        require ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] >= (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b
                        require sub_a4ced09d[address(msg.sender)] <= ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)]
                        if not ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                            require unclaimedPayoutTotals[address(msg.sender)] >= unclaimedPayoutTotals[address(msg.sender)]
                        else:
                            require ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
                            require (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
                            require unclaimedPayoutTotals[address(msg.sender)] + ((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) >= unclaimedPayoutTotals[address(msg.sender)]
                            unclaimedPayoutTotals[address(msg.sender)] += (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
    claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
    if not totalPerTokenPayout:
        require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
    else:
        require claimedPerTokenPayouts[address(arg1)] <= totalPerTokenPayout
        require stage <= 8
        if stage < 7:
            require sub_13b44d35[address(arg1)] >= 0
            require sub_a4ced09d[address(arg1)] <= sub_13b44d35[address(arg1)]
            if not sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
            else:
                require sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
                require (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]
                require unclaimedPayoutTotals[address(arg1)] + ((totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) >= unclaimedPayoutTotals[address(arg1)]
                unclaimedPayoutTotals[address(arg1)] += (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18
        else:
            if sub_a705f893[address(arg1)] > 0:
                require sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] >= sub_a705f893[address(arg1)]
                require sub_a4ced09d[address(arg1)] <= sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)]
                if not sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                    require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
                else:
                    require sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
                    require (totalPerTokenPayout * sub_a705f893[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_a705f893[address(arg1)]) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / sub_a705f893[address(arg1)] + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]
                    require unclaimedPayoutTotals[address(arg1)] + ((totalPerTokenPayout * sub_a705f893[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_a705f893[address(arg1)]) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) >= unclaimedPayoutTotals[address(arg1)]
                    unclaimedPayoutTotals[address(arg1)] += (totalPerTokenPayout * sub_a705f893[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_a705f893[address(arg1)]) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18
            else:
                if sub_1c031dd8[address(arg1)] <= 0:
                    require sub_13b44d35[address(arg1)] >= 0
                    require sub_a4ced09d[address(arg1)] <= sub_13b44d35[address(arg1)]
                    if not sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                        require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
                    else:
                        require sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
                        require (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]
                        require unclaimedPayoutTotals[address(arg1)] + ((totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) >= unclaimedPayoutTotals[address(arg1)]
                        unclaimedPayoutTotals[address(arg1)] += (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18
                else:
                    require sub_a51483f3 <= totalSupply
                    if not sub_1c031dd8[address(arg1)]:
                        require sub_1c00930b
                        require (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] >= 0 / sub_1c00930b
                        require sub_a4ced09d[address(arg1)] <= (0 / sub_1c00930b) + sub_13b44d35[address(arg1)]
                        if not (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                            require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
                        else:
                            require (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
                            require (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / (0 / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]
                            require unclaimedPayoutTotals[address(arg1)] + ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) >= unclaimedPayoutTotals[address(arg1)]
                            unclaimedPayoutTotals[address(arg1)] += (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18
                    else:
                        require sub_1c031dd8[address(arg1)]
                        require (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c031dd8[address(arg1)] == totalSupply - sub_a51483f3
                        require sub_1c00930b
                        require ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] >= (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b
                        require sub_a4ced09d[address(arg1)] <= ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)]
                        if not ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]:
                            require unclaimedPayoutTotals[address(arg1)] >= unclaimedPayoutTotals[address(arg1)]
                        else:
                            require ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)]
                            require (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / ((totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + sub_13b44d35[address(arg1)] - sub_a4ced09d[address(arg1)] == totalPerTokenPayout - claimedPerTokenPayouts[address(arg1)]
                            require unclaimedPayoutTotals[address(arg1)] + ((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18) >= unclaimedPayoutTotals[address(arg1)]
                            unclaimedPayoutTotals[address(arg1)] += (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(arg1)] * (totalSupply * sub_1c031dd8[address(arg1)]) - (sub_a51483f3 * sub_1c031dd8[address(arg1)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(arg1)]) - (claimedPerTokenPayouts[address(arg1)] * sub_13b44d35[address(arg1)]) - (totalPerTokenPayout * sub_a4ced09d[address(arg1)]) + (claimedPerTokenPayouts[address(arg1)] * sub_a4ced09d[address(arg1)]) / 10^18
    claimedPerTokenPayouts[address(arg1)] = totalPerTokenPayout
    require arg1
    require stage <= 8
    if stage < 7:
        require sub_13b44d35[address(msg.sender)] >= 0
        require sub_a4ced09d[address(msg.sender)] <= sub_13b44d35[address(msg.sender)]
        require arg2 <= sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
    else:
        if sub_a705f893[address(msg.sender)] > 0:
            require sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] >= sub_a705f893[address(msg.sender)]
            require sub_a4ced09d[address(msg.sender)] <= sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)]
            require arg2 <= sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
        else:
            if sub_1c031dd8[address(msg.sender)] <= 0:
                require sub_13b44d35[address(msg.sender)] >= 0
                require sub_a4ced09d[address(msg.sender)] <= sub_13b44d35[address(msg.sender)]
                require arg2 <= sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
            else:
                require sub_a51483f3 <= totalSupply
                if not sub_1c031dd8[address(msg.sender)]:
                    require sub_1c00930b
                    require (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] >= 0 / sub_1c00930b
                    require sub_a4ced09d[address(msg.sender)] <= (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)]
                    require arg2 <= (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
                else:
                    require sub_1c031dd8[address(msg.sender)]
                    require (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c031dd8[address(msg.sender)] == totalSupply - sub_a51483f3
                    require sub_1c00930b
                    require ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] >= (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b
                    require sub_a4ced09d[address(msg.sender)] <= ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)]
                    require arg2 <= ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
    require sub_a4ced09d[address(msg.sender)] + arg2 >= sub_a4ced09d[address(msg.sender)]
    sub_a4ced09d[address(msg.sender)] += arg2
    require sub_13b44d35[address(arg1)] + arg2 >= sub_13b44d35[address(arg1)]
    sub_13b44d35[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function payout() payable {
    if msg.sender == issuerAddress:
        require stage <= 8
        if stage == 7:
            require 5 * msg.value / 5 == msg.value
            require 5 * msg.value / 1000 > 0
            require 5 * msg.value / 1000 <= msg.value
            if not msg.value - (5 * msg.value / 1000):
                require totalSupply
                require totalPerTokenPayout + (0 / totalSupply) >= totalPerTokenPayout
                totalPerTokenPayout += 0 / totalSupply
                if not msg.value - (5 * msg.value / 1000):
                    require totalSupply
                    require (5 * msg.value / 1000) + (0 % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + (0 % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require 0 % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - (0 % totalSupply / 10^18), mem[483 len 28]
                else:
                    require msg.value - (5 * msg.value / 1000)
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                    require totalSupply
                    require (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18), mem[483 len 28]
            else:
                require msg.value - (5 * msg.value / 1000)
                require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                require totalSupply
                require totalPerTokenPayout + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / totalSupply) >= totalPerTokenPayout
                totalPerTokenPayout += (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / totalSupply
                if not msg.value - (5 * msg.value / 1000):
                    require totalSupply
                    require (5 * msg.value / 1000) + (0 % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + (0 % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require 0 % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - (0 % totalSupply / 10^18), mem[483 len 28]
                else:
                    require msg.value - (5 * msg.value / 1000)
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                    require totalSupply
                    require (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    mem[202 len 22] = mem[202 len 12], Mask(80, 0, 'FeeManager')
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18), mem[483 len 28]
        else:
            require stage <= 8
            require stage == 8
            require 5 * msg.value / 5 == msg.value
            require 5 * msg.value / 1000 > 0
            require 5 * msg.value / 1000 <= msg.value
            if not msg.value - (5 * msg.value / 1000):
                require totalSupply
                require totalPerTokenPayout + (0 / totalSupply) >= totalPerTokenPayout
                totalPerTokenPayout += 0 / totalSupply
                if not msg.value - (5 * msg.value / 1000):
                    require totalSupply
                    require (5 * msg.value / 1000) + (0 % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + (0 % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require 0 % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - (0 % totalSupply / 10^18), mem[483 len 28]
                else:
                    require msg.value - (5 * msg.value / 1000)
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                    require totalSupply
                    require (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    mem[202 len 22] = mem[202 len 12], Mask(80, 0, 'FeeManager')
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18), mem[483 len 28]
            else:
                require msg.value - (5 * msg.value / 1000)
                require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                require totalSupply
                require totalPerTokenPayout + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / totalSupply) >= totalPerTokenPayout
                totalPerTokenPayout += (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / totalSupply
                if not msg.value - (5 * msg.value / 1000):
                    require totalSupply
                    require (5 * msg.value / 1000) + (0 % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + (0 % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require 0 % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - (0 % totalSupply / 10^18), mem[483 len 28]
                else:
                    require msg.value - (5 * msg.value / 1000)
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                    require totalSupply
                    require (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18), mem[483 len 28]
    else:
        require msg.sender == address(custodianAddress)
        require stage <= 8
        if stage == 7:
            require 5 * msg.value / 5 == msg.value
            require 5 * msg.value / 1000 > 0
            require 5 * msg.value / 1000 <= msg.value
            if not msg.value - (5 * msg.value / 1000):
                require totalSupply
                require totalPerTokenPayout + (0 / totalSupply) >= totalPerTokenPayout
                totalPerTokenPayout += 0 / totalSupply
                if not msg.value - (5 * msg.value / 1000):
                    require totalSupply
                    require (5 * msg.value / 1000) + (0 % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    mem[202 len 22] = mem[202 len 12], Mask(80, 0, 'FeeManager')
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + (0 % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require 0 % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - (0 % totalSupply / 10^18), mem[483 len 28]
                else:
                    require msg.value - (5 * msg.value / 1000)
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                    require totalSupply
                    require (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18), mem[483 len 28]
            else:
                require msg.value - (5 * msg.value / 1000)
                require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                require totalSupply
                require totalPerTokenPayout + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / totalSupply) >= totalPerTokenPayout
                totalPerTokenPayout += (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / totalSupply
                if not msg.value - (5 * msg.value / 1000):
                    require totalSupply
                    require (5 * msg.value / 1000) + (0 % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + (0 % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require 0 % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - (0 % totalSupply / 10^18), mem[483 len 28]
                else:
                    require msg.value - (5 * msg.value / 1000)
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                    require totalSupply
                    require (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18), mem[483 len 28]
        else:
            require stage <= 8
            require stage == 8
            require 5 * msg.value / 5 == msg.value
            require 5 * msg.value / 1000 > 0
            require 5 * msg.value / 1000 <= msg.value
            if not msg.value - (5 * msg.value / 1000):
                require totalSupply
                require totalPerTokenPayout + (0 / totalSupply) >= totalPerTokenPayout
                totalPerTokenPayout += 0 / totalSupply
                if not msg.value - (5 * msg.value / 1000):
                    require totalSupply
                    require (5 * msg.value / 1000) + (0 % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + (0 % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require 0 % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - (0 % totalSupply / 10^18), mem[483 len 28]
                else:
                    require msg.value - (5 * msg.value / 1000)
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                    require totalSupply
                    require (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    mem[202 len 22] = mem[202 len 12], Mask(80, 0, 'FeeManager')
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18), mem[483 len 28]
            else:
                require msg.value - (5 * msg.value / 1000)
                require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                require totalSupply
                require totalPerTokenPayout + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / totalSupply) >= totalPerTokenPayout
                totalPerTokenPayout += (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / totalSupply
                if not msg.value - (5 * msg.value / 1000):
                    require totalSupply
                    require (5 * msg.value / 1000) + (0 % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + (0 % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require 0 % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - (0 % totalSupply / 10^18), mem[483 len 28]
                else:
                    require msg.value - (5 * msg.value / 1000)
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) / msg.value - (5 * msg.value / 1000) == 10^18
                    require totalSupply
                    require (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) >= 5 * msg.value / 1000
                    mem[202 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[202 len 10])
                    require ext_call.success
                    mem[274] = 0, mem[274 len 28]
                    mem[274] = mem[302 len 4]
                    call address(ext_call.return_data[0]).mem[274 len 4] with:
                       value (5 * msg.value / 1000) + ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18) wei
                         gas gas_remaining wei
                        args mem[278 len 28]
                    require ext_call.success
                    mem[379 len 0] = None
                    staticcall stor2 with:
                         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                            gas gas_remaining wei
                           args sha3(mem[379 len 9])
                    require ext_call.success
                    require (10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18 <= msg.value - (5 * msg.value / 1000)
                    mem[483 len 64] = 2086858912, msg.value - (5 * msg.value / 1000) - ((10^18 * msg.value) - (10^18 * 5 * msg.value / 1000) % totalSupply / 10^18), mem[483 len 28]
    mem[515] = mem[543 len 4]
    call address(ext_call.return_data[0]).mem[483 len 4] with:
         gas gas_remaining wei
        args mem[487 len 60]
    return 1
}

function sub_db1e39e1(?) {
    require msg.sender == address(custodianAddress)
    mem[96 len 64] = call.data[4 len 64]
    mem[160] = 64
    mem[64] = 256
    mem[192 len 2048] = code.data[19340 len 2048]
    mem[192] = call.data[4]
    mem[224] = call.data[36]
    idx = 0
    while idx < 64:
        require idx < 64
        if Mask(8, 248, mem[idx + 192]):
            idx = idx + 1
            continue 
        mem[160] = idx
        require idx == 46
        require 0 < idx
        require Mask(8, 248, call.data[4]) == 0x5100000000000000000000000000000000000000000000000000000000000000
        require 1 < idx
        require Mask(8, 240, call.data[5 len 31]) << 8 == 0x6d00000000000000000000000000000000000000000000000000000000000000
        mem[256] = stor5
        idx = 256
        s = 5
        while 320 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        mem[320] = 64
        mem[64] = 416
        mem[352 len 2048] = code.data[19340 len 2048]
        mem[352] = stor5
        mem[384] = mem[288]
        idx = 0
        while idx < 64:
            require idx < 64
            if Mask(8, 248, mem[idx + 352]):
                idx = idx + 1
                continue 
            mem[320] = idx
            t = 352
            u = 448
            s = idx
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[floor32(idx) + 448] = mem[-(idx % 32) + floor32(idx) + 384 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 448])
            mem[416] = idx
            t = 448
            u = idx + 448
            s = mem[416]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[idx + floor32(mem[416]) + 448] = mem[floor32(mem[416]) + -(mem[416] % 32) + 480 len mem[416] % 32] or Mask(8 * -(mem[416] % 32) + 32, -(8 * -(mem[416] % 32) + 32) + 256, mem[idx + floor32(mem[416]) + 448])
            _317 = sha3(mem[idx + 448 len idx])
            _319 = mem[160]
            t = 192
            u = idx + 480
            s = mem[160]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[idx + floor32(mem[160]) + 480] = mem[floor32(mem[160]) + -(mem[160] % 32) + 224 len mem[160] % 32] or Mask(8 * -(mem[160] % 32) + 32, -(8 * -(mem[160] % 32) + 32) + 256, mem[idx + floor32(mem[160]) + 480])
            mem[idx + 448] = mem[160]
            mem[64] = mem[160] + idx + 480
            t = idx + 480
            u = mem[160] + idx + 480
            s = mem[idx + 448]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[160] + idx + floor32(mem[idx + 448]) + 480] = mem[idx + -(mem[idx + 448] % 32) + floor32(mem[idx + 448]) + 512 len mem[idx + 448] % 32] or Mask(8 * -(mem[idx + 448] % 32) + 32, -(8 * -(mem[idx + 448] % 32) + 32) + 256, mem[mem[160] + idx + floor32(mem[idx + 448]) + 480])
            require sha3(mem[mem[160] + idx + 480 len mem[160]]) != _317
            require stage <= 8
            if stage == 7:
                t = 5
                s = 4
                while 68 > s:
                    stor[t] = cd[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = 7
                while 7 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[mem[160] + idx + 512] = 'PoaLogger'
                t = mem[160] + idx + 512
                u = mem[160] + idx + 576
                s = 9
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[160] + idx + 576] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[mem[160] + idx + 576])
                t = mem[160] + idx + 576
                u = mem[160] + idx + 585
                s = 9
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[160] + idx + 585] = mem[mem[160] + idx + 599 len 9] or Mask(184, 72, mem[mem[160] + idx + 585])
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[mem[160] + idx + 585 len 9])
                require ext_call.success
                mem[mem[160] + idx + 657 len 64] = call.data[4 len 64]
                mem[mem[160] + idx + 653] = call.data[4 len 28] or 0xbbddd39500000000000000000000000000000000000000000000000000000000
                s = 0
                while s < 68:
                    mem[mem[160] + idx + s + 721] = mem[mem[160] + idx + s + 653]
                    s = s + 32
                    continue 
                mem[mem[160] + idx + 785] = mem[mem[160] + idx + 813 len 4]
                call address(ext_call.return_data[0]).mem[mem[160] + idx + 721 len 4] with:
                     gas gas_remaining wei
                    args mem[mem[160] + idx + 725 len 92]
            else:
                require stage <= 8
                if stage == 4:
                    t = 5
                    s = 4
                    while 68 > s:
                        stor[t] = cd[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = 7
                    while 7 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[mem[160] + idx + 480] = 9
                    mem[mem[160] + idx + 512] = 'PoaLogger'
                    t = mem[160] + idx + 512
                    u = mem[160] + idx + 576
                    s = 9
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[160] + idx + 576] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[mem[160] + idx + 576])
                    _1259 = mem[160] + idx + 544
                    mem[mem[160] + idx + 544] = 9
                    mem[64] = mem[160] + idx + 585
                    t = mem[160] + idx + 576
                    u = mem[64]
                    s = mem[mem[160] + idx + 544]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1259])] = mem[_1259 + floor32(mem[_1259]) + -(mem[_1259] % 32) + 64 len mem[_1259] % 32] or Mask(8 * -(mem[_1259] % 32) + 32, -(8 * -(mem[_1259] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1259])])
                else:
                    require stage <= 8
                    require stage == 8
                    t = 5
                    s = 4
                    while 68 > s:
                        stor[t] = cd[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = 7
                    while 7 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[mem[160] + idx + 480] = 9
                    mem[mem[160] + idx + 512] = 'PoaLogger'
                    t = mem[160] + idx + 512
                    u = mem[160] + idx + 576
                    s = 9
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[160] + idx + 576] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[mem[160] + idx + 576])
                    mem[mem[160] + idx + 544] = 9
                    mem[64] = mem[160] + idx + 585
                    t = mem[160] + idx + 576
                    u = mem[64]
                    s = mem[mem[160] + idx + 544]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_319 + idx + 544])] = mem[_319 + idx + floor32(mem[_319 + idx + 544]) + -(mem[_319 + idx + 544] % 32) + 608 len mem[_319 + idx + 544] % 32] or Mask(8 * -(mem[_319 + idx + 544] % 32) + 32, -(8 * -(mem[_319 + idx + 544] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_319 + idx + 544])])
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[mem[64] len _319 + idx + -mem[64] + 594])
                require ext_call.success
                mem[mem[64] + 72 len 64] = call.data[4 len 64]
                mem[mem[64] + 68] = call.data[4 len 28] or 0xbbddd39500000000000000000000000000000000000000000000000000000000
                idx = 0
                while idx < 68:
                    mem[mem[64] + idx + 136] = mem[mem[64] + idx + 68]
                    idx = idx + 32
                    continue 
                mem[mem[64] + 200] = mem[mem[64] + 228 len 4]
                call address(ext_call.return_data[0]).mem[mem[64] + 136 len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 140 len 92]
            return 1
        mem[320] = idx
        t = 352
        u = 448
        s = idx
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[floor32(idx) + 448] = mem[-(idx % 32) + floor32(idx) + 384 len idx % 32] or Mask(8 * -(idx % 32) + 32, -(8 * -(idx % 32) + 32) + 256, mem[floor32(idx) + 448])
        mem[416] = idx
        t = 448
        u = idx + 448
        s = mem[416]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(mem[416]) + 448] = mem[floor32(mem[416]) + -(mem[416] % 32) + 480 len mem[416] % 32] or Mask(8 * -(mem[416] % 32) + 32, -(8 * -(mem[416] % 32) + 32) + 256, mem[idx + floor32(mem[416]) + 448])
        _310 = sha3(mem[idx + 448 len idx])
        _312 = mem[160]
        t = 192
        u = idx + 480
        s = mem[160]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[idx + floor32(mem[160]) + 480] = mem[floor32(mem[160]) + -(mem[160] % 32) + 224 len mem[160] % 32] or Mask(8 * -(mem[160] % 32) + 32, -(8 * -(mem[160] % 32) + 32) + 256, mem[idx + floor32(mem[160]) + 480])
        mem[idx + 448] = mem[160]
        mem[64] = mem[160] + idx + 480
        _381 = mem[160]
        t = idx + 480
        u = mem[64]
        s = mem[idx + 448]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[idx + 448])] = mem[idx + floor32(mem[idx + 448]) + -(mem[idx + 448] % 32) + 512 len mem[idx + 448] % 32] or Mask(8 * -(mem[idx + 448] % 32) + 32, -(8 * -(mem[idx + 448] % 32) + 32) + 256, mem[mem[64] + floor32(mem[idx + 448])])
        require sha3(mem[mem[64] len _381 + _312 + idx + -mem[64] + 480]) != _310
        require stage <= 8
        if stage == 7:
            s = 5
            idx = 4
            while 68 > idx:
                stor[s] = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 7
            while 7 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            _819 = mem[64]
            mem[64] = mem[64] + 64
            mem[_819] = 9
            mem[_819 + 32] = 'PoaLogger'
            mem[mem[64]] = 'getContractAddress32(bytes32)'
            _858 = mem[64]
            s = _819 + 32
            t = mem[64] + 32
            idx = mem[_819]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[_819]) + 32] = mem[_819 + floor32(mem[_819]) + -(mem[_819] % 32) + 64 len mem[_819] % 32] or Mask(8 * -(mem[_819] % 32) + 32, -(8 * -(mem[_819] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_819]) + 32])
            _1235 = mem[64]
            mem[mem[64]] = _858 + -mem[64] + 9
            mem[64] = _858 + 41
            _1237 = mem[_1235]
            s = _1235 + 32
            t = _858 + 41
            idx = mem[_1235]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[_858 + floor32(mem[_1235]) + 41] = mem[_1235 + -(mem[_1235] % 32) + floor32(mem[_1235]) + 64 len mem[_1235] % 32] or Mask(8 * -(mem[_1235] % 32) + 32, -(8 * -(mem[_1235] % 32) + 32) + 256, mem[_858 + floor32(mem[_1235]) + 41])
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[_858 + 41 len _1237])
            require ext_call.success
            mem[_858 + 113 len 64] = call.data[4 len 64]
            mem[_858 + 109] = call.data[4 len 28] or 0xbbddd39500000000000000000000000000000000000000000000000000000000
            idx = 0
            while idx < 68:
                mem[_858 + idx + 177] = mem[_858 + idx + 109]
                idx = idx + 32
                continue 
            mem[_858 + 241] = mem[_858 + 269 len 4]
            call address(ext_call.return_data[0]).mem[_858 + 177 len 4] with:
                 gas gas_remaining wei
                args mem[_858 + 181 len 92]
        else:
            require stage <= 8
            if stage == 4:
                s = 5
                idx = 4
                while 68 > idx:
                    stor[s] = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 7
                while 7 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                _820 = mem[64]
                mem[64] = mem[64] + 64
                mem[_820] = 9
                mem[_820 + 32] = 'PoaLogger'
                mem[mem[64]] = 'getContractAddress32(bytes32)'
                _863 = mem[64]
                s = _820 + 32
                t = mem[64] + 32
                idx = mem[_820]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[_820]) + 32] = mem[_820 + floor32(mem[_820]) + -(mem[_820] % 32) + 64 len mem[_820] % 32] or Mask(8 * -(mem[_820] % 32) + 32, -(8 * -(mem[_820] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_820]) + 32])
                _1241 = mem[64]
                mem[mem[64]] = 9
                mem[64] = mem[64] + 41
                _1243 = mem[_1241]
                s = _1241 + 32
                t = _863 + 41
                idx = mem[_1241]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[_863 + floor32(mem[_1241]) + 41] = mem[_1241 + -(mem[_1241] % 32) + floor32(mem[_1241]) + 64 len mem[_1241] % 32] or Mask(8 * -(mem[_1241] % 32) + 32, -(8 * -(mem[_1241] % 32) + 32) + 256, mem[_863 + floor32(mem[_1241]) + 41])
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[_863 + 41 len _1243])
                require ext_call.success
                mem[_863 + 113 len 64] = call.data[4 len 64]
                mem[_863 + 109] = call.data[4 len 28] or 0xbbddd39500000000000000000000000000000000000000000000000000000000
                idx = 0
                while idx < 68:
                    mem[_863 + idx + 177] = mem[_863 + idx + 109]
                    idx = idx + 32
                    continue 
                mem[_863 + 241] = mem[_863 + 269 len 4]
                call address(ext_call.return_data[0]).mem[_863 + 177 len 4] with:
                     gas gas_remaining wei
                    args mem[_863 + 181 len 92]
            else:
                require stage <= 8
                require stage == 8
                s = 5
                idx = 4
                while 68 > idx:
                    stor[s] = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 7
                while 7 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                _821 = mem[64]
                mem[64] = mem[64] + 64
                mem[_821] = 9
                mem[_821 + 32] = 'PoaLogger'
                mem[mem[64]] = 'getContractAddress32(bytes32)'
                _868 = mem[64]
                s = _821 + 32
                t = mem[64] + 32
                idx = mem[_821]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[_821]) + 32] = mem[_821 + floor32(mem[_821]) + -(mem[_821] % 32) + 64 len mem[_821] % 32] or Mask(8 * -(mem[_821] % 32) + 32, -(8 * -(mem[_821] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_821]) + 32])
                _1247 = mem[64]
                mem[mem[64]] = _868 + -mem[64] + 9
                mem[64] = _868 + 41
                _1249 = mem[_1247]
                s = _1247 + 32
                t = _868 + 41
                idx = mem[_1247]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[_868 + floor32(mem[_1247]) + 41] = mem[_1247 + -(mem[_1247] % 32) + floor32(mem[_1247]) + 64 len mem[_1247] % 32] or Mask(8 * -(mem[_1247] % 32) + 32, -(8 * -(mem[_1247] % 32) + 32) + 256, mem[_868 + floor32(mem[_1247]) + 41])
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[_868 + 41 len _1249])
                require ext_call.success
                mem[_868 + 113 len 64] = call.data[4 len 64]
                mem[_868 + 109] = call.data[4 len 28] or 0xbbddd39500000000000000000000000000000000000000000000000000000000
                idx = 0
                while idx < 68:
                    mem[_868 + idx + 177] = mem[_868 + idx + 109]
                    idx = idx + 32
                    continue 
                mem[_868 + 241] = mem[_868 + 269 len 4]
                call address(ext_call.return_data[0]).mem[_868 + 177 len 4] with:
                     gas gas_remaining wei
                    args mem[_868 + 181 len 92]
        return 1
    mem[160] = idx
    require idx == 46
    require 0 < idx
    require Mask(8, 248, call.data[4]) == 0x5100000000000000000000000000000000000000000000000000000000000000
    require 1 < idx
    require Mask(8, 240, call.data[5 len 31]) << 8 == 0x6d00000000000000000000000000000000000000000000000000000000000000
    mem[256] = stor5
    s = 256
    t = 5
    while 320 > s + 32:
        mem[s + 32] = uint256(stor1[t])
        s = s + 32
        t = t + 1
        continue 
    mem[320] = 64
    mem[64] = 416
    mem[352 len 2048] = code.data[19340 len 2048]
    mem[352] = stor5
    mem[384] = mem[288]
    s = 0
    while s < 64:
        require s < 64
        if Mask(8, 248, mem[s + 352]):
            s = s + 1
            continue 
        mem[320] = s
        t = 352
        u = 448
        idx = s
        while idx >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            idx = idx - 32
            continue 
        mem[floor32(s) + 448] = mem[floor32(s) + -(s % 32) + 384 len s % 32] or Mask(8 * -(s % 32) + 32, -(8 * -(s % 32) + 32) + 256, mem[floor32(s) + 448])
        mem[416] = s
        t = 448
        u = s + 448
        idx = mem[416]
        while idx >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            idx = idx - 32
            continue 
        mem[s + floor32(mem[416]) + 448] = mem[-(mem[416] % 32) + floor32(mem[416]) + 480 len mem[416] % 32] or Mask(8 * -(mem[416] % 32) + 32, -(8 * -(mem[416] % 32) + 32) + 256, mem[s + floor32(mem[416]) + 448])
        _303 = sha3(mem[s + 448 len s])
        _305 = mem[160]
        t = 192
        u = s + 480
        idx = mem[160]
        while idx >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            idx = idx - 32
            continue 
        mem[s + floor32(mem[160]) + 480] = mem[floor32(mem[160]) + -(mem[160] % 32) + 224 len mem[160] % 32] or Mask(8 * -(mem[160] % 32) + 32, -(8 * -(mem[160] % 32) + 32) + 256, mem[s + floor32(mem[160]) + 480])
        mem[s + 448] = mem[160]
        mem[64] = mem[160] + s + 480
        t = s + 480
        u = mem[160] + s + 480
        idx = mem[s + 448]
        while idx >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            idx = idx - 32
            continue 
        mem[mem[160] + s + floor32(mem[s + 448]) + 480] = mem[s + -(mem[s + 448] % 32) + floor32(mem[s + 448]) + 512 len mem[s + 448] % 32] or Mask(8 * -(mem[s + 448] % 32) + 32, -(8 * -(mem[s + 448] % 32) + 32) + 256, mem[mem[160] + s + floor32(mem[s + 448]) + 480])
        require sha3(mem[mem[160] + s + 480 len mem[160]]) != _303
        require stage <= 8
        if stage == 7:
            t = 5
            idx = 4
            while 68 > idx:
                stor[t] = cd[idx]
                t = t + 1
                idx = idx + 32
                continue 
            idx = 7
            while 7 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            mem[mem[160] + s + 512] = 'PoaLogger'
            t = mem[160] + s + 512
            u = mem[160] + s + 576
            idx = 9
            while idx >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                idx = idx - 32
                continue 
            mem[mem[160] + s + 576] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[mem[160] + s + 576])
            t = mem[160] + s + 576
            u = mem[160] + s + 585
            idx = 9
            while idx >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                idx = idx - 32
                continue 
            mem[mem[160] + s + 585] = mem[mem[160] + s + 599 len 9] or Mask(184, 72, mem[mem[160] + s + 585])
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[mem[160] + s + 585 len 9])
            require ext_call.success
            mem[mem[160] + s + 657 len 64] = call.data[4 len 64]
            mem[mem[160] + s + 653] = call.data[4 len 28] or 0xbbddd39500000000000000000000000000000000000000000000000000000000
            idx = 0
            while idx < 68:
                mem[mem[160] + s + idx + 721] = mem[mem[160] + s + idx + 653]
                idx = idx + 32
                continue 
            mem[mem[160] + s + 785] = mem[mem[160] + s + 813 len 4]
            call address(ext_call.return_data[0]).mem[mem[160] + s + 721 len 4] with:
                 gas gas_remaining wei
                args mem[mem[160] + s + 725 len 92]
        else:
            require stage <= 8
            if stage == 4:
                t = 5
                idx = 4
                while 68 > idx:
                    stor[t] = cd[idx]
                    t = t + 1
                    idx = idx + 32
                    continue 
                idx = 7
                while 7 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                mem[mem[160] + s + 480] = 9
                mem[mem[160] + s + 512] = 'PoaLogger'
                t = mem[160] + s + 512
                u = mem[160] + s + 576
                idx = 9
                while idx >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    idx = idx - 32
                    continue 
                mem[mem[160] + s + 576] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[mem[160] + s + 576])
                mem[mem[160] + s + 544] = 9
                mem[64] = mem[160] + s + 585
                t = mem[160] + s + 576
                u = mem[160] + s + 585
                idx = mem[mem[160] + s + 544]
                while idx >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    idx = idx - 32
                    continue 
                mem[mem[160] + s + floor32(mem[mem[160] + s + 544]) + 585] = mem[mem[160] + s + floor32(mem[mem[160] + s + 544]) + -(mem[mem[160] + s + 544] % 32) + 608 len mem[mem[160] + s + 544] % 32] or Mask(8 * -(mem[mem[160] + s + 544] % 32) + 32, -(8 * -(mem[mem[160] + s + 544] % 32) + 32) + 256, mem[mem[160] + s + floor32(mem[mem[160] + s + 544]) + 585])
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[_305 + s + 585 len 9])
                require ext_call.success
                mem[_305 + s + 657 len 64] = call.data[4 len 64]
                mem[_305 + s + 653] = call.data[4 len 28] or 0xbbddd39500000000000000000000000000000000000000000000000000000000
                idx = 0
                while idx < 68:
                    mem[_305 + s + idx + 721] = mem[_305 + s + idx + 653]
                    idx = idx + 32
                    continue 
                mem[_305 + s + 785] = mem[_305 + s + 813 len 4]
                call address(ext_call.return_data[0]).mem[_305 + s + 721 len 4] with:
                     gas gas_remaining wei
                    args mem[_305 + s + 725 len 92]
            else:
                require stage <= 8
                require stage == 8
                t = 5
                idx = 4
                while 68 > idx:
                    stor[t] = cd[idx]
                    t = t + 1
                    idx = idx + 32
                    continue 
                idx = 7
                while 7 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                mem[mem[160] + s + 512] = 'PoaLogger'
                t = mem[160] + s + 512
                u = mem[160] + s + 576
                idx = 9
                while idx >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    idx = idx - 32
                    continue 
                mem[mem[160] + s + 576] = Mask(72, 0, 'PoaLogger') or Mask(184, 72, mem[mem[160] + s + 576])
                mem[mem[160] + s + 544] = 9
                mem[64] = mem[160] + s + 585
                t = mem[160] + s + 576
                u = mem[160] + s + 585
                idx = mem[mem[160] + s + 544]
                while idx >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    idx = idx - 32
                    continue 
                mem[mem[160] + s + floor32(mem[mem[160] + s + 544]) + 585] = mem[mem[160] + s + -(mem[mem[160] + s + 544] % 32) + floor32(mem[mem[160] + s + 544]) + 608 len mem[mem[160] + s + 544] % 32] or Mask(8 * -(mem[mem[160] + s + 544] % 32) + 32, -(8 * -(mem[mem[160] + s + 544] % 32) + 32) + 256, mem[mem[160] + s + floor32(mem[mem[160] + s + 544]) + 585])
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[mem[160] + s + 585 len mem[mem[160] + s + 544]])
                require ext_call.success
                mem[mem[160] + s + 657 len 64] = call.data[4 len 64]
                mem[mem[160] + s + 653] = call.data[4 len 28] or 0xbbddd39500000000000000000000000000000000000000000000000000000000
                idx = 0
                while idx < 68:
                    mem[mem[160] + s + idx + 721] = mem[mem[160] + s + idx + 653]
                    idx = idx + 32
                    continue 
                mem[mem[160] + s + 785] = mem[mem[160] + s + 813 len 4]
                call address(ext_call.return_data[0]).mem[mem[160] + s + 721 len 4] with:
                     gas gas_remaining wei
                    args mem[mem[160] + s + 725 len 92]
        return 1
    mem[320] = s
    mem[448 len floor32(s)] = mem[352 len floor32(s)]
    mem[floor32(s) + -(s % 32) + 480 len s % 32] = mem[floor32(s) + -(s % 32) + 384 len s % 32]
    mem[416] = s
    mem[s + 448 len floor32(s)] = mem[448 len floor32(s)]
    var36001 = floor32(s) + 448
    var36002 = s + floor32(s) + 448
    var36003 = s - (32 * Mask(251, 0, s) >> 5)
    mem[(2 * floor32(s)) + 480 len s % 32] = mem[-(s % 32) + floor32(s) + 480 len s % 32]
    _296 = sha3(mem[s + 448 len s])
    mem[s + 480 len floor32(idx)] = mem[192 len floor32(idx)]
    var39001 = floor32(idx) + 192
    var39002 = s + floor32(idx) + 480
    var39003 = idx - (32 * Mask(251, 0, idx) >> 5)
    mem[s + floor32(idx) + -(idx % 32) + 512 len idx % 32] = mem[floor32(idx) + -(idx % 32) + 224 len idx % 32]
    mem[idx + s + 480 len floor32(idx)] = mem[s + 480 len floor32(idx)]
    var42001 = s + floor32(idx) + 480
    var42002 = idx + s + floor32(idx) + 480
    var42003 = idx - (32 * Mask(251, 0, idx) >> 5)
    mem[(2 * floor32(idx)) + s + 512 len idx % 32] = mem[s + -(idx % 32) + floor32(idx) + 512 len idx % 32]
    require sha3(mem[idx + s + 480 len idx]) != _296
    require stage <= 8
    if stage == 7:
        u = 5
        t = 4
        while 68 > t:
            stor[u] = cd[t]
            u = u + 1
            t = t + 32
            continue 
        t = 7
        while 7 > t:
            stor[t] = 0
            t = t + 1
            continue 
        mem[idx + s + 585 len 0] = None
        var68001 = idx + s + 576
        var68002 = idx + s + 585
        var68003 = 9
        staticcall stor2 with:
             funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                gas gas_remaining wei
               args sha3(mem[idx + s + 585 len 9])
        require ext_call.success
        mem[idx + s + 721 len 96] = 3151877013, call.data[4 len 28], call.data[32 len 36], mem[idx + s + 721 len 28]
    else:
        require stage <= 8
        if stage == 4:
            u = 5
            t = 4
            while 68 > t:
                stor[u] = cd[t]
                u = u + 1
                t = t + 32
                continue 
            t = 7
            while 7 > t:
                stor[t] = 0
                t = t + 1
                continue 
            var68001 = idx + s + 512
            var68002 = idx + s + 576
            var68003 = 9
            mem[idx + s + 585 len 0] = None
            var71001 = idx + s + 576
            var71002 = idx + s + 585
            var71003 = 9
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[idx + s + 585 len 9])
            require ext_call.success
            mem[idx + s + 721 len 96] = 3151877013, call.data[4 len 28], call.data[32 len 36], mem[idx + s + 721 len 28]
            var76001 = 96
        else:
            require stage <= 8
            require stage == 8
            u = 5
            t = 4
            while 68 > t:
                stor[u] = cd[t]
                u = u + 1
                t = t + 32
                continue 
            t = 7
            while 7 > t:
                stor[t] = 0
                t = t + 1
                continue 
            var71001 = idx + s + 512
            var71002 = idx + s + 576
            var71003 = 9
            mem[idx + s + 585 len 0] = None
            var74001 = idx + s + 576
            var74002 = idx + s + 585
            var74003 = 9
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[idx + s + 585 len 9])
            require ext_call.success
            mem[idx + s + 721 len 96] = 3151877013, call.data[4 len 28], call.data[32 len 36], mem[idx + s + 721 len 28]
            var79001 = 96
    mem[idx + s + 785] = mem[idx + s + 813 len 4]
    call address(ext_call.return_data[0]).mem[idx + s + 721 len 4] with:
         gas gas_remaining wei
        args mem[idx + s + 725 len 92]
    return 1
}

function claim() {
    require stage <= 8
    if stage == 7:
        if not totalPerTokenPayout:
            require unclaimedPayoutTotals[address(msg.sender)] >= 0
            require unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return unclaimedPayoutTotals[address(msg.sender)]
        require claimedPerTokenPayouts[address(msg.sender)] <= totalPerTokenPayout
        require stage <= 8
        if stage < 7:
            require sub_13b44d35[address(msg.sender)] >= 0
            require sub_a4ced09d[address(msg.sender)] <= sub_13b44d35[address(msg.sender)]
            if not sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                require unclaimedPayoutTotals[address(msg.sender)] >= 0
                require unclaimedPayoutTotals[address(msg.sender)] > 0
                claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
                unclaimedPayoutTotals[address(msg.sender)] = 0
                call msg.sender with:
                   value unclaimedPayoutTotals[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[201 len 0] = None
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
                mem[401] = mem[429 len 4]
                call address(ext_call.return_data[0]).mem[337 len 4] with:
                     gas gas_remaining wei
                    args mem[341 len 92]
                return unclaimedPayoutTotals[address(msg.sender)]
            require sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
            require (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
            require ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] >= (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
            require ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return (((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)])
        if sub_a705f893[address(msg.sender)] > 0:
            require sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] >= sub_a705f893[address(msg.sender)]
            require sub_a4ced09d[address(msg.sender)] <= sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)]
            if not sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                require unclaimedPayoutTotals[address(msg.sender)] >= 0
                require unclaimedPayoutTotals[address(msg.sender)] > 0
                claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
                unclaimedPayoutTotals[address(msg.sender)] = 0
                call msg.sender with:
                   value unclaimedPayoutTotals[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[201 len 0] = None
                mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'PoaLogger')
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
                mem[401] = mem[429 len 4]
                call address(ext_call.return_data[0]).mem[337 len 4] with:
                     gas gas_remaining wei
                    args mem[341 len 92]
                return unclaimedPayoutTotals[address(msg.sender)]
            require sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
            require (totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
            require ((totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] >= (totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
            require ((totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value ((totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'PoaLogger')
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, ((totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return (((totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)])
        if sub_1c031dd8[address(msg.sender)] <= 0:
            require sub_13b44d35[address(msg.sender)] >= 0
            require sub_a4ced09d[address(msg.sender)] <= sub_13b44d35[address(msg.sender)]
            if not sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                require unclaimedPayoutTotals[address(msg.sender)] >= 0
                require unclaimedPayoutTotals[address(msg.sender)] > 0
                claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
                unclaimedPayoutTotals[address(msg.sender)] = 0
                call msg.sender with:
                   value unclaimedPayoutTotals[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[201 len 0] = None
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
                mem[401] = mem[429 len 4]
                call address(ext_call.return_data[0]).mem[337 len 4] with:
                     gas gas_remaining wei
                    args mem[341 len 92]
                return unclaimedPayoutTotals[address(msg.sender)]
            require sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
            require (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
            require ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] >= (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
            require ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return (((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)])
        require sub_a51483f3 <= totalSupply
        if not sub_1c031dd8[address(msg.sender)]:
            require sub_1c00930b
            require (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] >= 0 / sub_1c00930b
            require sub_a4ced09d[address(msg.sender)] <= (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)]
            if not (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                require unclaimedPayoutTotals[address(msg.sender)] >= 0
                require unclaimedPayoutTotals[address(msg.sender)] > 0
                claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
                unclaimedPayoutTotals[address(msg.sender)] = 0
                call msg.sender with:
                   value unclaimedPayoutTotals[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[201 len 0] = None
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
                mem[401] = mem[429 len 4]
                call address(ext_call.return_data[0]).mem[337 len 4] with:
                     gas gas_remaining wei
                    args mem[341 len 92]
                return unclaimedPayoutTotals[address(msg.sender)]
            require (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
            require (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
            require ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] >= (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
            require ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'PoaLogger')
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return (((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)])
        require sub_1c031dd8[address(msg.sender)]
        require (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c031dd8[address(msg.sender)] == totalSupply - sub_a51483f3
        require sub_1c00930b
        require ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] >= (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b
        require sub_a4ced09d[address(msg.sender)] <= ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)]
        if not ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
            require unclaimedPayoutTotals[address(msg.sender)] >= 0
            require unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'PoaLogger')
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return unclaimedPayoutTotals[address(msg.sender)]
    else:
        require stage <= 8
        require stage == 8
        if not totalPerTokenPayout:
            require unclaimedPayoutTotals[address(msg.sender)] >= 0
            require unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'PoaLogger')
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return unclaimedPayoutTotals[address(msg.sender)]
        require claimedPerTokenPayouts[address(msg.sender)] <= totalPerTokenPayout
        require stage <= 8
        if stage < 7:
            require sub_13b44d35[address(msg.sender)] >= 0
            require sub_a4ced09d[address(msg.sender)] <= sub_13b44d35[address(msg.sender)]
            if not sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                require unclaimedPayoutTotals[address(msg.sender)] >= 0
                require unclaimedPayoutTotals[address(msg.sender)] > 0
                claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
                unclaimedPayoutTotals[address(msg.sender)] = 0
                call msg.sender with:
                   value unclaimedPayoutTotals[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[201 len 0] = None
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
                mem[401] = mem[429 len 4]
                call address(ext_call.return_data[0]).mem[337 len 4] with:
                     gas gas_remaining wei
                    args mem[341 len 92]
                return unclaimedPayoutTotals[address(msg.sender)]
            require sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
            require (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
            require ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] >= (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
            require ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return (((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)])
        if sub_a705f893[address(msg.sender)] > 0:
            require sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] >= sub_a705f893[address(msg.sender)]
            require sub_a4ced09d[address(msg.sender)] <= sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)]
            if not sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                require unclaimedPayoutTotals[address(msg.sender)] >= 0
                require unclaimedPayoutTotals[address(msg.sender)] > 0
                claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
                unclaimedPayoutTotals[address(msg.sender)] = 0
                call msg.sender with:
                   value unclaimedPayoutTotals[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[201 len 0] = None
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
                mem[401] = mem[429 len 4]
                call address(ext_call.return_data[0]).mem[337 len 4] with:
                     gas gas_remaining wei
                    args mem[341 len 92]
                return unclaimedPayoutTotals[address(msg.sender)]
            require sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
            require (totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / sub_a705f893[address(msg.sender)] + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
            require ((totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] >= (totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
            require ((totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value ((totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, ((totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return (((totalPerTokenPayout * sub_a705f893[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_a705f893[address(msg.sender)]) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)])
        if sub_1c031dd8[address(msg.sender)] <= 0:
            require sub_13b44d35[address(msg.sender)] >= 0
            require sub_a4ced09d[address(msg.sender)] <= sub_13b44d35[address(msg.sender)]
            if not sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                require unclaimedPayoutTotals[address(msg.sender)] >= 0
                require unclaimedPayoutTotals[address(msg.sender)] > 0
                claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
                unclaimedPayoutTotals[address(msg.sender)] = 0
                call msg.sender with:
                   value unclaimedPayoutTotals[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[201 len 0] = None
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
                mem[401] = mem[429 len 4]
                call address(ext_call.return_data[0]).mem[337 len 4] with:
                     gas gas_remaining wei
                    args mem[341 len 92]
                return unclaimedPayoutTotals[address(msg.sender)]
            require sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
            require (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
            require ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] >= (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
            require ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'PoaLogger')
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, ((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return (((totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)])
        require sub_a51483f3 <= totalSupply
        if not sub_1c031dd8[address(msg.sender)]:
            require sub_1c00930b
            require (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] >= 0 / sub_1c00930b
            require sub_a4ced09d[address(msg.sender)] <= (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)]
            if not (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
                require unclaimedPayoutTotals[address(msg.sender)] >= 0
                require unclaimedPayoutTotals[address(msg.sender)] > 0
                claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
                unclaimedPayoutTotals[address(msg.sender)] = 0
                call msg.sender with:
                   value unclaimedPayoutTotals[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[201 len 0] = None
                staticcall stor2 with:
                     funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                        gas gas_remaining wei
                       args sha3(mem[201 len 9])
                require ext_call.success
                mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
                mem[401] = mem[429 len 4]
                call address(ext_call.return_data[0]).mem[337 len 4] with:
                     gas gas_remaining wei
                    args mem[341 len 92]
                return unclaimedPayoutTotals[address(msg.sender)]
            require (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
            require (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / (0 / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
            require ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] >= (totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
            require ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            mem[201 len 23] = mem[201 len 14], Mask(72, 0, 'PoaLogger')
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, ((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return (((totalPerTokenPayout * 0 / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * 0 / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)])
        require sub_1c031dd8[address(msg.sender)]
        require (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c031dd8[address(msg.sender)] == totalSupply - sub_a51483f3
        require sub_1c00930b
        require ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] >= (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b
        require sub_a4ced09d[address(msg.sender)] <= ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)]
        if not ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]:
            require unclaimedPayoutTotals[address(msg.sender)] >= 0
            require unclaimedPayoutTotals[address(msg.sender)] > 0
            claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
            unclaimedPayoutTotals[address(msg.sender)] = 0
            call msg.sender with:
               value unclaimedPayoutTotals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[201 len 0] = None
            staticcall stor2 with:
                 funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
                    gas gas_remaining wei
                   args sha3(mem[201 len 9])
            require ext_call.success
            mem[337 len 96] = 437963075, msg.sender, unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
            mem[401] = mem[429 len 4]
            call address(ext_call.return_data[0]).mem[337 len 4] with:
                 gas gas_remaining wei
                args mem[341 len 92]
            return unclaimedPayoutTotals[address(msg.sender)]
    ('iszero', ('iszero', ('add', ('div', ('add', ('mul', ('stor', ('name', 'totalSupply', 7)), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_1c031dd8', 11)))), ('mul', -1, ('stor', ('name', 'sub_a51483f3', 8)), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_1c031dd8', 11))))), ('stor', ('name', 'sub_1c00930b', 10))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_13b44d35', 27))), ('mul', -1, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_a4ced09d', 26)))))))
    require ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)]
    require (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / ((totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + sub_13b44d35[address(msg.sender)] - sub_a4ced09d[address(msg.sender)] == totalPerTokenPayout - claimedPerTokenPayouts[address(msg.sender)]
    require ((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] >= (totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18
    require ((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] > 0
    claimedPerTokenPayouts[address(msg.sender)] = totalPerTokenPayout
    unclaimedPayoutTotals[address(msg.sender)] = 0
    call msg.sender with:
       value ((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[201 len 0] = None
    staticcall stor2 with:
         funct Mask(32, 224, sha3('getContractAddress32(bytes32)')) >> 224
            gas gas_remaining wei
           args sha3(mem[201 len 9])
    require ext_call.success
    mem[337 len 96] = 437963075, msg.sender, ((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)], mem[337 len 28]
    mem[401] = mem[429 len 4]
    call address(ext_call.return_data[0]).mem[337 len 4] with:
         gas gas_remaining wei
        args mem[341 len 92]
    return (((totalPerTokenPayout * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) - (claimedPerTokenPayouts[address(msg.sender)] * (totalSupply * sub_1c031dd8[address(msg.sender)]) - (sub_a51483f3 * sub_1c031dd8[address(msg.sender)]) / sub_1c00930b) + (totalPerTokenPayout * sub_13b44d35[address(msg.sender)]) - (claimedPerTokenPayouts[address(msg.sender)] * sub_13b44d35[address(msg.sender)]) - (totalPerTokenPayout * sub_a4ced09d[address(msg.sender)]) + (claimedPerTokenPayouts[address(msg.sender)] * sub_a4ced09d[address(msg.sender)]) / 10^18) + unclaimedPayoutTotals[address(msg.sender)])
}



}
