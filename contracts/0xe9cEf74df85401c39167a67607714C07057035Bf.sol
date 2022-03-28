contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 2674]




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
address treasuryAddress;

function treasury() {
    return treasuryAddress
}

function hasAccess(address arg1) {
    return bool(stor1[arg1])
}

function approved(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) {
    if not stor1[address(msg.sender)]:
        return 0
    if not stor2[address(arg1)]:
        return 0
    require ext_code.size(treasuryAddress)
    call treasuryAddress.0xf359671c with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, 96, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_51171896(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    treasuryAddress = arg1
    return 1
}

function deny(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x617070726f766572000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor2[address(arg1)] = 0
    return 1
}

function approve(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x617070726f766572000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor2[address(arg1)] = 1
    return 1
}

function addAddress(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor1[address(arg1)] = 1
    return 1
}

function removeAddress(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor1[address(arg1)] = 0
    return 1
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function withdrawWithReference(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if not stor1[address(msg.sender)]:
        return 0
    if not stor2[address(arg1)]:
        return 0
    mem[ceil32(arg3.length) + 128] = 0xf359671c00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg1
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = 96
    mem[ceil32(arg3.length) + 228] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 260] = mem[128]
        mem[ceil32(arg3.length) + 292 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    require ext_code.size(treasuryAddress)
    call treasuryAddress.0xf359671c with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 260 len arg3.length])
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
