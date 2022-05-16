contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;

function _fallback() payable {
    stor0 = 0
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    if code.data[32221 len 20] != 0:
        stor1 = code.data[32221 len 20]
    else:
        create contract with 0 wei
                        code: code.data[20261 len 11884]
        require create.new_address
        stor1 = address(create.new_address)
    require code.data[32157 len 20] != 0
    require code.data[32189 len 20] != 0
    require code.data[32253 len 20] != 0
    stor2 = code.data[32157 len 20]
    stor3 = code.data[32189 len 20]
    stor4 = code.data[32253 len 20]
    return code.data[824 len 19437]
}



// =====================  Runtime code  =====================


address creatorAddress;
address storAddress;
address mntpTokenAddress;
address goldTokenAddress;
address goldIssueBurnFeeAddress;
address managerAddress;

function creator() {
    return creatorAddress
}

function goldIssueBurnFee() {
    return goldIssueBurnFeeAddress
}

function goldToken() {
    return goldTokenAddress
}

function stor() {
    return storAddress
}

function mntpToken() {
    return mntpTokenAddress
}

function managerAddress() {
    return managerAddress
}

function _fallback() payable {
    revert
}

function changeCreator(address arg1) {
    require msg.sender == creatorAddress
    creatorAddress = arg1
}

function setManagerAddress(address arg1) {
    require msg.sender == creatorAddress
    managerAddress = arg1
}

function changeGoldIssueBurnFeeContract(address arg1) {
    require msg.sender == creatorAddress
    goldIssueBurnFeeAddress = arg1
}

function stringToBytes64(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    _3 = mem[160]
    mem[ceil32(arg1.length) + 128] = mem[128]
    return mem[ceil32(arg1.length) + 128], _3
}

function stringToBytes32(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getDocCount() {
    require ext_code.size(storAddress)
    call storAddress.0x63704e93 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getRequestsCount() {
    require ext_code.size(storAddress)
    call storAddress.0x3410452a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getHotWalletAddress() {
    require ext_code.size(storAddress)
    call storAddress.0xf6b55a93 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function getAllGoldTransactionsCount() {
    require ext_code.size(storAddress)
    call storAddress.0x5dd284e3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function changeController(address arg1) {
    require msg.sender == creatorAddress
    require ext_code.size(storAddress)
    call storAddress.0xf3d3d448 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function setHotWalletAddress(address arg1) {
    require msg.sender == creatorAddress
    require ext_code.size(storAddress)
    call storAddress.0xfc1c2180 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function getGoldTransactionsCount(string arg1) {
    require ext_code.size(storAddress)
    call storAddress.0x1332143c with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    return ext_call.return_data[0]
}

function getRequestBaseInfo(uint256 arg1) {
    require ext_code.size(storAddress)
    call storAddress.0x90dbf4fc with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20], ext_call.return_data[32] << 248, ext_call.return_data[64], ext_call.return_data[96]
}

function addDoc(string arg1) {
    if managerAddress != msg.sender:
        require msg.sender == creatorAddress
    require ext_code.size(storAddress)
    call storAddress.0x20bacfbd with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    return ext_call.return_data[0]
}

function addGoldTransaction(string arg1, int256 arg2) {
    if managerAddress != msg.sender:
        require msg.sender == creatorAddress
    require ext_code.size(storAddress)
    call storAddress.0x9aaa5750 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all]), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawEth(address arg1, uint256 arg2) {
    if managerAddress != msg.sender:
        require msg.sender == creatorAddress
    require arg2 >= 10^17
    if eth.balance(this.address) >= arg2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawTokens(address arg1, uint256 arg2) {
    if managerAddress != msg.sender:
        require msg.sender == creatorAddress
    require arg2 != 0
    require ext_code.size(goldTokenAddress)
    call goldTokenAddress.burnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), arg2
    require ext_call.success
    require arg2 != 0
    require ext_code.size(goldTokenAddress)
    call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function getUserHotGoldBalance(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) != sha3(None)
    require ext_code.size(storAddress)
    call storAddress.0x1ad9f190 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    return ext_call.return_data[0]
}

function getGoldTransaction(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) != sha3(None)
    require ext_code.size(storAddress)
    call storAddress.0xebe09a93 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all]), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function addBuyTokensRequest(string arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) != sha3(None)
    require msg.value > 0
    require ext_code.size(storAddress)
    call storAddress.0xce73b41a with:
         gas gas_remaining - 710 wei
        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2, msg.value
    require ext_call.success
    emit TokenBuyRequest(msg.sender, Array(len=arg1.length, data=arg1[all]), arg2, msg.value, ext_call.return_data[0]);
    return ext_call.return_data[0]
}

function addSellTokensRequest(string arg1, uint256 arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) != sha3(None)
    require arg3 > 0
    require ext_code.size(goldTokenAddress)
    call goldTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= arg3
    require arg3 != 0
    require ext_code.size(goldTokenAddress)
    call goldTokenAddress.burnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg3
    require ext_call.success
    require ext_code.size(storAddress)
    call storAddress.0x9bb84cd0 with:
         gas gas_remaining - 710 wei
        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2, arg3
    require ext_call.success
    emit TokenSellRequest(msg.sender, Array(len=arg1.length, data=arg1[all]), arg2, arg3, ext_call.return_data[0]);
    return ext_call.return_data[0]
}

function bytes32ToString(bytes32 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 32
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, arg1 * 2^(8 * idx)):
            s = arg1 * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _msize = max(0, s + 8)
    mem[_msize + 224] = s
    mem[64] = (_msize + 224) + ceil32(s) + 32
    t = 0
    while t < s:
        require t < 32
        require t < mem[_msize + 224]
        mem[(_msize + 224) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    mem[(_msize + 224) + ceil32(s) + 32] = 32
    mem[(_msize + 224) + ceil32(s) + 64] = mem[_msize + 224]
    mem[(_msize + 224) + ceil32(s) + 96 len ceil32(mem[_msize + 224])] = mem[(_msize + 224) + 32 len ceil32(mem[_msize + 224])]
    if not mem[max(0, s + 8) + 224] % 32:
        return 32, mem[(_msize + 224) + ceil32(s) + 64 len mem[_msize + 224] + 32]
    mem[floor32(mem[_msize + 224]) + (_msize + 224) + ceil32(s) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + ceil32(s) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
    return 32, mem[(_msize + 224) + ceil32(s) + 64 len floor32(mem[_msize + 224]) + 64]
}

function transferGoldFromHotWallet(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if managerAddress != msg.sender:
        require msg.sender == creatorAddress
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    require sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]) != sha3(None)
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    require sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]) != sha3(None)
    require ext_code.size(storAddress)
    call storAddress.0x1ad9f190 with:
         gas gas_remaining - 710 wei
        args Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(storAddress)
    call storAddress.0xf6b55a93 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(goldTokenAddress)
    call goldTokenAddress.burnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), arg2
    require ext_call.success
    require ext_code.size(goldTokenAddress)
    call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    if managerAddress != msg.sender:
        require msg.sender == creatorAddress
    require ext_code.size(storAddress)
    call storAddress.0x9aaa5750 with:
         gas gas_remaining - 710 wei
        args Array(len=arg3.length, data=arg3[all]), -arg2
    require ext_call.success
}

function cancelRequest(uint256 arg1) {
    mem[96] = 0
    if managerAddress != msg.sender:
        require msg.sender == creatorAddress
    mem[128] = 0
    mem[160] = 0
    mem[384] = 0
    require ext_code.size(storAddress)
    call storAddress.0xc58343ef with:
         gas gas_remaining - 710 wei
        args arg1
    mem[192 len 192] = ext_call.return_data[0 len 192]
    require ext_call.success
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[416] = 32
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, ext_call.return_data[32] * 2^(8 * idx)):
            s = ext_call.return_data[32] * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[s + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = ext_call.return_data[32] * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _msize = max(0, s + 8)
    mem[_msize + 448] = s
    t = 0
    while t < s:
        require t < 32
        require t < mem[_msize + 448]
        mem[(_msize + 448) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    require 0 == uint8(ext_call.return_data[128])
    if ext_call.return_data[96]:
        call address(ext_call.return_data[0]) with:
           value ext_call.return_data[160] wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(goldTokenAddress)
        call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0]), ext_call.return_data[160]
    require ext_call.success
    require ext_code.size(storAddress)
    call storAddress.0x3015394c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit RequestCancelled(arg1);
}

function bytes64ToString(bytes32 arg1, bytes32 arg2) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 64
    s = 0
    idx = 0
    t = 0
    while idx < 32:
        if not Mask(8, 248, arg1 * 2^(8 * idx)):
            s = arg1 * 2^(8 * idx)
            idx = idx + 1
            t = t
            continue 
        require t < 64
        mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        t = t + 1
        continue 
    u = s
    idx = 0
    u = t
    while idx < 32:
        if not Mask(8, 248, arg2 * 2^(8 * idx)):
            u = arg2 * 2^(8 * idx)
            idx = idx + 1
            u = u
            continue 
        require u < 64
        mem[u + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        u = arg2 * 2^(8 * idx)
        idx = idx + 1
        u = u + 1
        continue 
    _msize = max(0, t + 8, u + 8)
    mem[_msize + 224] = u
    mem[64] = (_msize + 224) + ceil32(u) + 32
    s = 0
    while s < u:
        require s < 64
        require s < mem[_msize + 224]
        mem[(_msize + 224) + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1)), 32))), 0) - 256
        s = s + 1
        continue 
    mem[(_msize + 224) + ceil32(u) + 32] = 32
    mem[(_msize + 224) + ceil32(u) + 64] = mem[_msize + 224]
    mem[(_msize + 224) + ceil32(u) + 96 len ceil32(mem[_msize + 224])] = mem[(_msize + 224) + 32 len ceil32(mem[_msize + 224])]
    if not mem[max(0, t + 8, u + 8) + 224] % 32:
        return 32, mem[(_msize + 224) + ceil32(u) + 64 len mem[_msize + 224] + 32]
    mem[floor32(mem[_msize + 224]) + (_msize + 224) + ceil32(u) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + ceil32(u) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
    return 32, mem[(_msize + 224) + ceil32(u) + 64 len floor32(mem[_msize + 224]) + 64]
}

function getDoc(uint256 arg1) {
    mem[96] = 0
    require ext_code.size(storAddress)
    call storAddress.0xafa60487 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 64
    s = 0
    idx = 0
    t = 0
    while idx < 32:
        if not Mask(8, 248, ext_call.return_data[0] * 2^(8 * idx)):
            s = ext_call.return_data[0] * 2^(8 * idx)
            idx = idx + 1
            t = t
            continue 
        require t < 64
        mem[t + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 0, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 0, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = ext_call.return_data[0] * 2^(8 * idx)
        idx = idx + 1
        t = t + 1
        continue 
    u = s
    idx = 0
    u = t
    while idx < 32:
        if not Mask(8, 248, ext_call.return_data[32] * 2^(8 * idx)):
            u = ext_call.return_data[32] * 2^(8 * idx)
            idx = idx + 1
            u = u
            continue 
        require u < 64
        mem[u + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        u = ext_call.return_data[32] * 2^(8 * idx)
        idx = idx + 1
        u = u + 1
        continue 
    _msize = max(0, t + 8, u + 8)
    mem[_msize + 256] = u
    mem[64] = (_msize + 256) + ceil32(u) + 32
    s = 0
    while s < u:
        require s < 64
        require s < mem[_msize + 256]
        mem[(_msize + 256) + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 1)), 32))), 0) - 256
        s = s + 1
        continue 
    mem[(_msize + 256) + ceil32(u) + 32] = 32
    mem[(_msize + 256) + ceil32(u) + 64] = mem[_msize + 256]
    mem[(_msize + 256) + ceil32(u) + 96 len ceil32(mem[_msize + 256])] = mem[(_msize + 256) + 32 len ceil32(mem[_msize + 256])]
    if not mem[max(0, t + 8, u + 8) + 256] % 32:
        return 32, mem[(_msize + 256) + ceil32(u) + 64 len mem[_msize + 256] + 32]
    mem[floor32(mem[_msize + 256]) + (_msize + 256) + ceil32(u) + 96] = mem[floor32(mem[_msize + 256]) + (_msize + 256) + ceil32(u) + -(mem[_msize + 256] % 32) + 128 len mem[_msize + 256] % 32]
    return 32, mem[(_msize + 256) + ceil32(u) + 64 len floor32(mem[_msize + 256]) + 64]
}

function getRequest(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[352] = 0
    require ext_code.size(storAddress)
    call storAddress.0xc58343ef with:
         gas gas_remaining - 710 wei
        args arg1
    mem[160 len 192] = ext_call.return_data[0 len 192]
    require ext_call.success
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[384] = 32
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, ext_call.return_data[32] * 2^(8 * idx)):
            s = ext_call.return_data[32] * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = ext_call.return_data[32] * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _msize = max(0, s + 8)
    mem[_msize + 416] = s
    mem[64] = (_msize + 416) + ceil32(s) + 32
    t = 0
    while t < s:
        require t < 32
        require t < mem[_msize + 416]
        mem[(_msize + 416) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    mem[(_msize + 416) + ceil32(s) + 32] = address(ext_call.return_data[0])
    mem[(_msize + 416) + ceil32(s) + 96] = ext_call.return_data[64]
    mem[(_msize + 416) + ceil32(s) + 128] = bool(ext_call.return_data[96])
    mem[(_msize + 416) + ceil32(s) + 160] = uint8(ext_call.return_data[128])
    mem[(_msize + 416) + ceil32(s) + 192] = ext_call.return_data[160]
    mem[(_msize + 416) + ceil32(s) + 64] = 192
    mem[(_msize + 416) + ceil32(s) + 224] = mem[_msize + 416]
    mem[(_msize + 416) + ceil32(s) + 256 len ceil32(mem[_msize + 416])] = mem[(_msize + 416) + 32 len ceil32(mem[_msize + 416])]
    if not mem[max(0, s + 8) + 416] % 32:
        return address(ext_call.return_data[0]), 
               192,
               ext_call.return_data[64],
               bool(ext_call.return_data[96]),
               ext_call.return_data[128] << 248,
               ext_call.return_data[160],
               mem[(_msize + 416) + ceil32(s) + 224 len mem[_msize + 416] + 32]
    mem[floor32(mem[_msize + 416]) + (_msize + 416) + ceil32(s) + 256] = mem[floor32(mem[_msize + 416]) + (_msize + 416) + ceil32(s) + -(mem[_msize + 416] % 32) + 288 len mem[_msize + 416] % 32]
    return address(ext_call.return_data[0]), 
           Array(len=mem[_msize + 416], data=mem[(_msize + 416) + ceil32(s) + 256 len floor32(mem[_msize + 416]) + 32]),
           ext_call.return_data[64],
           bool(ext_call.return_data[96]),
           ext_call.return_data[128] << 248,
           ext_call.return_data[160]
}

function processSellRequestFiat(uint256 arg1, uint256 arg2) {
    mem[96] = 0
    if managerAddress != msg.sender:
        require msg.sender == creatorAddress
    require ext_code.size(storAddress)
    call storAddress.0x3410452a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1 < ext_call.return_data[0]
    mem[128] = 0
    mem[160] = 0
    mem[384] = 0
    require ext_code.size(storAddress)
    call storAddress.0xc58343ef with:
         gas gas_remaining - 710 wei
        args arg1
    mem[192 len 192] = ext_call.return_data[0 len 192]
    require ext_call.success
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[416] = 32
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, ext_call.return_data[32] * 2^(8 * idx)):
            s = ext_call.return_data[32] * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[s + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = ext_call.return_data[32] * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _msize = max(0, s + 8)
    mem[_msize + 448] = s
    mem[64] = (_msize + 448) + ceil32(s) + 32
    t = 0
    while t < s:
        require t < 32
        require t < mem[_msize + 448]
        mem[(_msize + 448) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    require 0 == uint8(ext_call.return_data[128])
    require ext_code.size(mntpTokenAddress)
    call mntpTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(goldIssueBurnFeeAddress)
    call goldIssueBurnFeeAddress.calculateBurnGoldFee(uint256 arg1, uint256 arg2, bool arg3) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0], ext_call.return_data[160], 1
    require ext_call.success
    require ext_call.return_data[160] > ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require ext_call.return_data[160] > 0
        require ext_code.size(storAddress)
        call storAddress.0x503b64c0 with:
             gas gas_remaining - 710 wei
            args arg1, ext_call.return_data[160] * arg2 / 10^18
    else:
        require ext_call.return_data[0] <= ext_call.return_data[160]
        require ext_call.return_data[160] - ext_call.return_data[0] > 0
        require ext_code.size(storAddress)
        call storAddress.0x503b64c0 with:
             gas gas_remaining - 710 wei
            args arg1, (ext_call.return_data[160] * arg2) - (ext_call.return_data[0] * arg2) / 10^18
    require ext_call.success
    emit RequestProcessed(arg1);
    return 1
}

function processBuyRequestFiat(string arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) {
    mem[128 len arg1.length] = arg1[all]
    if managerAddress != msg.sender:
        require msg.sender == creatorAddress
    mem[ceil32(arg1.length) + 128] = 0xce73b41a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = arg3
    mem[ceil32(arg1.length) + 196] = arg2
    mem[ceil32(arg1.length) + 228] = arg4
    mem[ceil32(arg1.length) + 164] = 128
    mem[ceil32(arg1.length) + 260] = arg1.length
    mem[ceil32(arg1.length) + 292 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(storAddress)
    call storAddress.0xce73b41a with:
         gas gas_remaining - 710 wei
        args address(arg3), Array(len=arg1.length, data=arg1[all]), arg2, arg4
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) != sha3(None)
    require ext_code.size(mntpTokenAddress)
    call mntpTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(goldIssueBurnFeeAddress)
    call goldIssueBurnFeeAddress.calculateIssueGoldFee(uint256 arg1, uint256 arg2, bool arg3) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0], 10^18 * arg4, 1
    require ext_call.success
    require 10^18 * arg4 > ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require 10^18 * arg4 > 0
        require 10^18 * arg5
        require 1000000000000000000 * 10^18 * arg4 / 10^18 * arg5 != 0
        require ext_code.size(goldTokenAddress)
        call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args address(arg3), 1000000000000000000 * 10^18 * arg4 / 10^18 * arg5
        require ext_call.success
        require ext_code.size(storAddress)
        call storAddress.0xf6b55a93 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if arg3 == ext_call.return_data[12 len 20]:
            if managerAddress != msg.sender:
                require msg.sender == creatorAddress
            require ext_code.size(storAddress)
            call storAddress.0x9aaa5750 with:
                 gas gas_remaining - 710 wei
                args Array(len=arg1.length, data=arg1[all]), 1000000000000000000 * 10^18 * arg4 / 10^18 * arg5
            require ext_call.success
        require ext_code.size(storAddress)
        call storAddress.0x503b64c0 with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], 1000000000000000000 * 10^18 * arg4 / 10^18 * arg5
    else:
        require ext_call.return_data[0] <= 10^18 * arg4
        require (10^18 * arg4) - ext_call.return_data[0] > 0
        require 10^18 * arg5
        require (1000000000000000000 * 10^18 * arg4) - (10^18 * ext_call.return_data[0]) / 10^18 * arg5 != 0
        require ext_code.size(goldTokenAddress)
        call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args address(arg3), (1000000000000000000 * 10^18 * arg4) - (10^18 * ext_call.return_data[0]) / 10^18 * arg5
        require ext_call.success
        require ext_code.size(storAddress)
        call storAddress.0xf6b55a93 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if arg3 == ext_call.return_data[12 len 20]:
            if managerAddress != msg.sender:
                require msg.sender == creatorAddress
            require ext_code.size(storAddress)
            call storAddress.0x9aaa5750 with:
                 gas gas_remaining - 710 wei
                args Array(len=arg1.length, data=arg1[all]), (1000000000000000000 * 10^18 * arg4) - (10^18 * ext_call.return_data[0]) / 10^18 * arg5
            require ext_call.success
        require ext_code.size(storAddress)
        call storAddress.0x503b64c0 with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], (1000000000000000000 * 10^18 * arg4) - (10^18 * ext_call.return_data[0]) / 10^18 * arg5
    require ext_call.success
    emit RequestProcessed(ext_call.return_data[0]);
    return 1
}

function processInternalRequest(string arg1, bool arg2, uint256 arg3, uint256 arg4) {
    mem[128 len arg1.length] = arg1[all]
    if managerAddress != msg.sender:
        require msg.sender == creatorAddress
    mem[ceil32(arg1.length) + 160] = 0
    require ext_code.size(storAddress)
    call storAddress.0xf6b55a93 with:
         gas gas_remaining - 710 wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) != sha3(None)
    if arg2:
        require ext_code.size(mntpTokenAddress)
        call mntpTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0])
        require ext_call.success
        require ext_code.size(goldIssueBurnFeeAddress)
        call goldIssueBurnFeeAddress.calculateIssueGoldFee(uint256 arg1, uint256 arg2, bool arg3) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], arg3, 1
        require ext_call.success
        require arg3 > ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            require arg3 > 0
            require arg4
            require 10^18 * arg3 / arg4 != 0
            require ext_code.size(goldTokenAddress)
            call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0]), 10^18 * arg3 / arg4
            require ext_call.success
            require ext_code.size(storAddress)
            call storAddress.0xf6b55a93 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                if managerAddress != msg.sender:
                    require msg.sender == creatorAddress
                require ext_code.size(storAddress)
                call storAddress.0x9aaa5750 with:
                     gas gas_remaining - 710 wei
                    args Array(len=arg1.length, data=arg1[all]), 10^18 * arg3 / arg4
                require ext_call.success
        else:
            require ext_call.return_data[0] <= arg3
            require arg3 - ext_call.return_data[0] > 0
            require arg4
            require (10^18 * arg3) - (10^18 * ext_call.return_data[0]) / arg4 != 0
            require ext_code.size(goldTokenAddress)
            call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0]), (10^18 * arg3) - (10^18 * ext_call.return_data[0]) / arg4
            require ext_call.success
            require ext_code.size(storAddress)
            call storAddress.0xf6b55a93 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                if managerAddress != msg.sender:
                    require msg.sender == creatorAddress
                require ext_code.size(storAddress)
                call storAddress.0x9aaa5750 with:
                     gas gas_remaining - 710 wei
                    args Array(len=arg1.length, data=arg1[all]), (10^18 * arg3) - (10^18 * ext_call.return_data[0]) / arg4
                require ext_call.success
    else:
        require arg3
        require arg3
        require arg3 * arg4 / arg3 == arg4
        require arg3 * arg4 / 10^18 > 0
        require ext_code.size(storAddress)
        call storAddress.0xf6b55a93 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
            if managerAddress != msg.sender:
                require msg.sender == creatorAddress
            require ext_code.size(storAddress)
            call storAddress.0x9aaa5750 with:
                 gas gas_remaining - 710 wei
                args Array(len=arg1.length, data=arg1[all]), -arg3
            require ext_call.success
        require ext_code.size(mntpTokenAddress)
        call mntpTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0])
        require ext_call.success
        require ext_code.size(goldIssueBurnFeeAddress)
        call goldIssueBurnFeeAddress.calculateBurnGoldFee(uint256 arg1, uint256 arg2, bool arg3) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], arg3 * arg4 / 10^18, 1
        require ext_call.success
        require arg3 * arg4 / 10^18 > ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            require arg3 * arg4 / 10^18 > 0
            if arg3 * arg4 / 10^18 <= eth.balance(this.address):
                call address(ext_call.return_data[0]) with:
                   value arg3 * arg4 / 10^18 wei
                     gas 2300 * is_zero(value) wei
            else:
                require arg3 != 0
                require ext_code.size(goldTokenAddress)
                call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), arg3
        else:
            require ext_call.return_data[0] <= arg3 * arg4 / 10^18
            require (arg3 * arg4 / 10^18) - ext_call.return_data[0] > 0
            if (arg3 * arg4 / 10^18) - ext_call.return_data[0] <= eth.balance(this.address):
                call address(ext_call.return_data[0]) with:
                   value (arg3 * arg4 / 10^18) - ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
            else:
                require arg3 != 0
                require ext_code.size(goldTokenAddress)
                call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), arg3
        require ext_call.success
}

function processRequest(uint256 arg1, uint256 arg2) {
    mem[96] = 0
    if msg.sender == managerAddress:
        require ext_code.size(storAddress)
        call storAddress.0x3410452a with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require arg1 < ext_call.return_data[0]
        mem[128] = 0
        mem[160] = 0
        mem[384] = 0
        require ext_code.size(storAddress)
        call storAddress.0xc58343ef with:
             gas gas_remaining - 710 wei
            args arg1
        mem[192 len 192] = ext_call.return_data[0 len 192]
        require ext_call.success
        mem[192] = 0
        mem[224] = 0
        mem[256] = 0
        mem[416] = 32
        s = 0
        idx = 0
        s = 0
        while idx < 32:
            if not Mask(8, 248, ext_call.return_data[32] * 2^(8 * idx)):
                s = ext_call.return_data[32] * 2^(8 * idx)
                idx = idx + 1
                s = s
                continue 
            require s < 32
            mem[s + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
            s = ext_call.return_data[32] * 2^(8 * idx)
            idx = idx + 1
            s = s + 1
            continue 
        _msize = max(0, s + 8)
        mem[_msize + 448] = s
        mem[64] = (_msize + 448) + ceil32(s) + 32
        t = 0
        while t < s:
            require t < 32
            require t < mem[_msize + 448]
            mem[(_msize + 448) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('var', 2)), 32))), 0) - 256
            t = t + 1
            continue 
        require 0 == uint8(ext_call.return_data[128])
        mem[(_msize + 448) + ceil32(s) + 32 len floor32(mem[_msize + 448])] = mem[(_msize + 448) + 32 len floor32(mem[_msize + 448])]
        mem[(_msize + 448) + ceil32(s) + floor32(mem[_msize + 448]) + -(mem[_msize + 448] % 32) + 64 len mem[_msize + 448] % 32] = mem[(_msize + 448) + floor32(mem[_msize + 448]) + -(mem[_msize + 448] % 32) + 64 len mem[_msize + 448] % 32]
        require sha3(mem[(max(0, s + 8) + 448) + ceil32(s) + 32 len mem[max(0, s + 8) + 448]]) != sha3(None)
        if ext_call.return_data[96]:
            require ext_code.size(mntpTokenAddress)
            call mntpTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            mem[(_msize + 448) + ceil32(s) + 100] = 0
            require ext_code.size(goldIssueBurnFeeAddress)
            call goldIssueBurnFeeAddress.calculateIssueGoldFee(uint256 arg1, uint256 arg2, bool arg3) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0], ext_call.return_data[160], 0
            require ext_call.success
            require ext_call.return_data[160] > ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                require ext_call.return_data[160] > 0
                require arg2
                require 10^18 * ext_call.return_data[160] / arg2 != 0
                require ext_code.size(goldTokenAddress)
                call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), 10^18 * ext_call.return_data[160] / arg2
                require ext_call.success
                require ext_code.size(storAddress)
                call storAddress.0xf6b55a93 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    if managerAddress != msg.sender:
                        require msg.sender == creatorAddress
                    mem[(_msize + 448) + ceil32(s) + 32] = 0x9aaa575000000000000000000000000000000000000000000000000000000000
                    mem[(_msize + 448) + ceil32(s) + 68] = 10^18 * ext_call.return_data[160] / arg2
                    mem[(_msize + 448) + ceil32(s) + 36] = 64
                    mem[(_msize + 448) + ceil32(s) + 100] = mem[_msize + 448]
                    mem[(_msize + 448) + ceil32(s) + 132 len ceil32(mem[_msize + 448])] = mem[(_msize + 448) + 32 len ceil32(mem[_msize + 448])]
                    if not mem[max(0, s + 8) + 448] % 32:
                        require ext_code.size(storAddress)
                        call storAddress.0x9aaa5750 with:
                             gas gas_remaining - 710 wei
                            args 64, 10^18 * ext_call.return_data[160] / arg2, mem[(_msize + 448) + ceil32(s) + 100 len mem[_msize + 448] + 32]
                    else:
                        mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + 132] = mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + -(mem[_msize + 448] % 32) + 164 len mem[_msize + 448] % 32]
                        require ext_code.size(storAddress)
                        call storAddress.0x9aaa5750 with:
                             gas gas_remaining - 710 wei
                            args Array(len=mem[_msize + 448], data=mem[(_msize + 448) + ceil32(s) + 132 len floor32(mem[_msize + 448]) + 32]), 10^18 * ext_call.return_data[160] / arg2
                    require ext_call.success
                require ext_code.size(storAddress)
                call storAddress.0x503b64c0 with:
                     gas gas_remaining - 710 wei
                    args arg1, 10^18 * ext_call.return_data[160] / arg2
            else:
                require ext_call.return_data[0] <= ext_call.return_data[160]
                require ext_call.return_data[160] - ext_call.return_data[0] > 0
                require arg2
                require (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2 != 0
                require ext_code.size(goldTokenAddress)
                call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2
                require ext_call.success
                require ext_code.size(storAddress)
                call storAddress.0xf6b55a93 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    if managerAddress != msg.sender:
                        require msg.sender == creatorAddress
                    mem[(_msize + 448) + ceil32(s) + 32] = 0x9aaa575000000000000000000000000000000000000000000000000000000000
                    mem[(_msize + 448) + ceil32(s) + 68] = (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2
                    mem[(_msize + 448) + ceil32(s) + 36] = 64
                    mem[(_msize + 448) + ceil32(s) + 100] = mem[_msize + 448]
                    mem[(_msize + 448) + ceil32(s) + 132 len ceil32(mem[_msize + 448])] = mem[(_msize + 448) + 32 len ceil32(mem[_msize + 448])]
                    if not mem[max(0, s + 8) + 448] % 32:
                        require ext_code.size(storAddress)
                        call storAddress.0x9aaa5750 with:
                             gas gas_remaining - 710 wei
                            args 64, (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2, mem[(_msize + 448) + ceil32(s) + 100 len mem[_msize + 448] + 32]
                    else:
                        mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + 132] = mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + -(mem[_msize + 448] % 32) + 164 len mem[_msize + 448] % 32]
                        require ext_code.size(storAddress)
                        call storAddress.0x9aaa5750 with:
                             gas gas_remaining - 710 wei
                            args Array(len=mem[_msize + 448], data=mem[(_msize + 448) + ceil32(s) + 132 len floor32(mem[_msize + 448]) + 32]), (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2
                    require ext_call.success
                require ext_code.size(storAddress)
                call storAddress.0x503b64c0 with:
                     gas gas_remaining - 710 wei
                    args arg1, (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2
            require ext_call.success
            emit RequestProcessed(arg1);
            return 1
        require ext_call.return_data[160]
        require ext_call.return_data[160]
        require ext_call.return_data[160] * arg2 / ext_call.return_data[160] == arg2
        require ext_call.return_data[160] * arg2 / 10^18 > 0
        require ext_code.size(storAddress)
        call storAddress.0xf6b55a93 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
            if managerAddress != msg.sender:
                require msg.sender == creatorAddress
            mem[(_msize + 448) + ceil32(s) + 32] = 0x9aaa575000000000000000000000000000000000000000000000000000000000
            mem[(_msize + 448) + ceil32(s) + 68] = -ext_call.return_data[160]
            mem[(_msize + 448) + ceil32(s) + 36] = 64
            mem[(_msize + 448) + ceil32(s) + 100] = mem[_msize + 448]
            mem[(_msize + 448) + ceil32(s) + 132 len ceil32(mem[_msize + 448])] = mem[(_msize + 448) + 32 len ceil32(mem[_msize + 448])]
            if not mem[max(0, s + 8) + 448] % 32:
                require ext_code.size(storAddress)
                call storAddress.0x9aaa5750 with:
                     gas gas_remaining - 710 wei
                    args 64, -ext_call.return_data[160], mem[(_msize + 448) + ceil32(s) + 100 len mem[_msize + 448] + 32]
            else:
                mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + 132] = mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + -(mem[_msize + 448] % 32) + 164 len mem[_msize + 448] % 32]
                require ext_code.size(storAddress)
                call storAddress.0x9aaa5750 with:
                     gas gas_remaining - 710 wei
                    args Array(len=mem[_msize + 448], data=mem[(_msize + 448) + ceil32(s) + 132 len floor32(mem[_msize + 448]) + 32]), -ext_call.return_data[160]
            require ext_call.success
    else:
        require msg.sender == creatorAddress
        require ext_code.size(storAddress)
        call storAddress.0x3410452a with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require arg1 < ext_call.return_data[0]
        mem[128] = 0
        mem[160] = 0
        mem[384] = 0
        require ext_code.size(storAddress)
        call storAddress.0xc58343ef with:
             gas gas_remaining - 710 wei
            args arg1
        mem[192 len 192] = ext_call.return_data[0 len 192]
        require ext_call.success
        mem[192] = 0
        mem[224] = 0
        mem[256] = 0
        mem[416] = 32
        s = 0
        idx = 0
        s = 0
        while idx < 32:
            if not Mask(8, 248, ext_call.return_data[32] * 2^(8 * idx)):
                s = ext_call.return_data[32] * 2^(8 * idx)
                idx = idx + 1
                s = s
                continue 
            require s < 32
            mem[s + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('ext_call.return_data', 32, 32), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
            s = ext_call.return_data[32] * 2^(8 * idx)
            idx = idx + 1
            s = s + 1
            continue 
        _msize = max(0, s + 8)
        mem[_msize + 448] = s
        mem[64] = (_msize + 448) + ceil32(s) + 32
        t = 0
        while t < s:
            require t < 32
            require t < mem[_msize + 448]
            mem[(_msize + 448) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('var', 2)), 32))), 0) - 256
            t = t + 1
            continue 
        require 0 == uint8(ext_call.return_data[128])
        if ext_call.return_data[96]:
            _3323 = mem[_msize + 448]
            mem[(_msize + 448) + ceil32(s) + 32 len floor32(mem[_msize + 448])] = mem[(_msize + 448) + 32 len floor32(mem[_msize + 448])]
            mem[(_msize + 448) + ceil32(s) + floor32(mem[_msize + 448]) + -(mem[_msize + 448] % 32) + 64 len mem[_msize + 448] % 32] = mem[(_msize + 448) + floor32(mem[_msize + 448]) + -(mem[_msize + 448] % 32) + 64 len mem[_msize + 448] % 32]
            require sha3(mem[(max(0, s + 8) + 448) + ceil32(s) + 32 len _3323]) != sha3(None)
            require ext_code.size(mntpTokenAddress)
            call mntpTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            mem[(_msize + 448) + ceil32(s) + 100] = 0
            require ext_code.size(goldIssueBurnFeeAddress)
            call goldIssueBurnFeeAddress.calculateIssueGoldFee(uint256 arg1, uint256 arg2, bool arg3) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0], ext_call.return_data[160], 0
            require ext_call.success
            require ext_call.return_data[160] > ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                require ext_call.return_data[160] > 0
                require arg2
                require 10^18 * ext_call.return_data[160] / arg2 != 0
                require ext_code.size(goldTokenAddress)
                call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), 10^18 * ext_call.return_data[160] / arg2
                require ext_call.success
                require ext_code.size(storAddress)
                call storAddress.0xf6b55a93 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    if managerAddress != msg.sender:
                        require msg.sender == creatorAddress
                    mem[(_msize + 448) + ceil32(s) + 32] = 0x9aaa575000000000000000000000000000000000000000000000000000000000
                    mem[(_msize + 448) + ceil32(s) + 68] = 10^18 * ext_call.return_data[160] / arg2
                    mem[(_msize + 448) + ceil32(s) + 36] = 64
                    mem[(_msize + 448) + ceil32(s) + 100] = mem[_msize + 448]
                    mem[(_msize + 448) + ceil32(s) + 132 len ceil32(mem[_msize + 448])] = mem[(_msize + 448) + 32 len ceil32(mem[_msize + 448])]
                    if not mem[max(0, s + 8) + 448] % 32:
                        require ext_code.size(storAddress)
                        call storAddress.0x9aaa5750 with:
                             gas gas_remaining - 710 wei
                            args 64, 10^18 * ext_call.return_data[160] / arg2, mem[(_msize + 448) + ceil32(s) + 100 len mem[_msize + 448] + 32]
                    else:
                        mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + 132] = mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + -(mem[_msize + 448] % 32) + 164 len mem[_msize + 448] % 32]
                        require ext_code.size(storAddress)
                        call storAddress.0x9aaa5750 with:
                             gas gas_remaining - 710 wei
                            args 64, 10^18 * ext_call.return_data[160] / arg2, mem[_msize + 448], mem[_msize + ceil32(s) + 580 len floor32(mem[_msize + 448]) + 32]
                    require ext_call.success
                require ext_code.size(storAddress)
                call storAddress.0x503b64c0 with:
                     gas gas_remaining - 710 wei
                    args arg1, 10^18 * ext_call.return_data[160] / arg2
            else:
                require ext_call.return_data[0] <= ext_call.return_data[160]
                require ext_call.return_data[160] - ext_call.return_data[0] > 0
                require arg2
                require (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2 != 0
                require ext_code.size(goldTokenAddress)
                call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2
                require ext_call.success
                require ext_code.size(storAddress)
                call storAddress.0xf6b55a93 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    if managerAddress != msg.sender:
                        require msg.sender == creatorAddress
                    mem[(_msize + 448) + ceil32(s) + 32] = 0x9aaa575000000000000000000000000000000000000000000000000000000000
                    mem[(_msize + 448) + ceil32(s) + 68] = (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2
                    mem[(_msize + 448) + ceil32(s) + 36] = 64
                    mem[(_msize + 448) + ceil32(s) + 100] = mem[_msize + 448]
                    mem[(_msize + 448) + ceil32(s) + 132 len ceil32(mem[_msize + 448])] = mem[(_msize + 448) + 32 len ceil32(mem[_msize + 448])]
                    if not mem[max(0, s + 8) + 448] % 32:
                        require ext_code.size(storAddress)
                        call storAddress.0x9aaa5750 with:
                             gas gas_remaining - 710 wei
                            args 64, (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2, mem[(_msize + 448) + ceil32(s) + 100 len mem[_msize + 448] + 32]
                    else:
                        mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + 132] = mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + -(mem[_msize + 448] % 32) + 164 len mem[_msize + 448] % 32]
                        require ext_code.size(storAddress)
                        call storAddress.0x9aaa5750 with:
                             gas gas_remaining - 710 wei
                            args 64, (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2, mem[_msize + 448], mem[_msize + ceil32(s) + 580 len floor32(mem[_msize + 448]) + 32]
                    require ext_call.success
                require ext_code.size(storAddress)
                call storAddress.0x503b64c0 with:
                     gas gas_remaining - 710 wei
                    args arg1, (10^18 * ext_call.return_data[160]) - (10^18 * ext_call.return_data[0]) / arg2
            require ext_call.success
            emit RequestProcessed(arg1);
            return 1
        _3318 = mem[_msize + 448]
        mem[(_msize + 448) + ceil32(s) + 32 len floor32(mem[_msize + 448])] = mem[(_msize + 448) + 32 len floor32(mem[_msize + 448])]
        mem[(_msize + 448) + ceil32(s) + floor32(mem[_msize + 448]) + -(mem[_msize + 448] % 32) + 64 len mem[_msize + 448] % 32] = mem[(_msize + 448) + floor32(mem[_msize + 448]) + -(mem[_msize + 448] % 32) + 64 len mem[_msize + 448] % 32]
        require sha3(mem[(max(0, s + 8) + 448) + ceil32(s) + 32 len _3318]) != sha3(None)
        require ext_call.return_data[160]
        require ext_call.return_data[160]
        require ext_call.return_data[160] * arg2 / ext_call.return_data[160] == arg2
        require ext_call.return_data[160] * arg2 / 10^18 > 0
        require ext_code.size(storAddress)
        call storAddress.0xf6b55a93 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
            if managerAddress != msg.sender:
                require msg.sender == creatorAddress
            mem[(_msize + 448) + ceil32(s) + 32] = 0x9aaa575000000000000000000000000000000000000000000000000000000000
            mem[(_msize + 448) + ceil32(s) + 68] = -ext_call.return_data[160]
            mem[(_msize + 448) + ceil32(s) + 36] = 64
            mem[(_msize + 448) + ceil32(s) + 100] = mem[_msize + 448]
            mem[(_msize + 448) + ceil32(s) + 132 len ceil32(mem[_msize + 448])] = mem[(_msize + 448) + 32 len ceil32(mem[_msize + 448])]
            if not mem[max(0, s + 8) + 448] % 32:
                require ext_code.size(storAddress)
                call storAddress.0x9aaa5750 with:
                     gas gas_remaining - 710 wei
                    args 64, -ext_call.return_data[160], mem[(_msize + 448) + ceil32(s) + 100 len mem[_msize + 448] + 32]
            else:
                mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + 132] = mem[floor32(mem[_msize + 448]) + (_msize + 448) + ceil32(s) + -(mem[_msize + 448] % 32) + 164 len mem[_msize + 448] % 32]
                require ext_code.size(storAddress)
                call storAddress.0x9aaa5750 with:
                     gas gas_remaining - 710 wei
                    args 64, -ext_call.return_data[160], mem[_msize + 448], mem[_msize + ceil32(s) + 580 len floor32(mem[_msize + 448]) + 32]
            require ext_call.success
    require ext_code.size(mntpTokenAddress)
    call mntpTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(goldIssueBurnFeeAddress)
    call goldIssueBurnFeeAddress.calculateBurnGoldFee(uint256 arg1, uint256 arg2, bool arg3) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0], ext_call.return_data[160] * arg2 / 10^18, 0
    require ext_call.success
    require ext_call.return_data[160] * arg2 / 10^18 > ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require ext_call.return_data[160] * arg2 / 10^18 > 0
        if ext_call.return_data[160] * arg2 / 10^18 <= eth.balance(this.address):
            call address(ext_call.return_data[0]) with:
               value ext_call.return_data[160] * arg2 / 10^18 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(storAddress)
            call storAddress.0x503b64c0 with:
                 gas gas_remaining - 710 wei
                args arg1, ext_call.return_data[160] * arg2 / 10^18
            require ext_call.success
            emit RequestProcessed(arg1);
            return 1
    else:
        require ext_call.return_data[0] <= ext_call.return_data[160] * arg2 / 10^18
        require (ext_call.return_data[160] * arg2 / 10^18) - ext_call.return_data[0] > 0
        if (ext_call.return_data[160] * arg2 / 10^18) - ext_call.return_data[0] <= eth.balance(this.address):
            call address(ext_call.return_data[0]) with:
               value (ext_call.return_data[160] * arg2 / 10^18) - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(storAddress)
            call storAddress.0x503b64c0 with:
                 gas gas_remaining - 710 wei
                args arg1, (ext_call.return_data[160] * arg2 / 10^18) - ext_call.return_data[0]
            require ext_call.success
            emit RequestProcessed(arg1);
            return 1
    require ext_call.return_data[160] != 0
    require ext_code.size(goldTokenAddress)
    call goldTokenAddress.issueTokens(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), ext_call.return_data[160]
    require ext_call.success
    require ext_code.size(storAddress)
    call storAddress.0xdb4844f3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit RequestFailed(arg1);
    return 0
}



}
