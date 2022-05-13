contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address stor1;
address controllerAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 mintingNonce;
uint8 stor7;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function finalized() {
    return bool(uint8(stor1.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function mintingStopped() {
    return bool(stor7)
}

function controller() {
    return controllerAddress
}

function mintingNonce() {
    return mintingNonce
}

function _fallback() payable {
    revert
}

function stopMinting() {
    require owner == msg.sender
    stor7 = 1
}

function finalize() {
    require owner == msg.sender
    uint8(stor1.field_160) = 1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    address(stor1.field_0) = arg1
}

function acceptOwnership() {
    if address(stor1.field_0) == msg.sender:
        owner = address(stor1.field_0)
}

function setController(address arg1) {
    require owner == msg.sender
    require not uint8(stor1.field_160)
    controllerAddress = arg1
}

function burn(address arg1, uint256 arg2) {
    require controllerAddress == msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
}

function approve(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    if arg3:
        if allowance[address(arg1)][address(arg2)]:
            return 0
    allowance[address(arg1)][address(arg2)] = arg3
    return 1
}

function decreaseApproval(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    if arg3 <= allowance[address(arg1)][address(arg2)]:
        allowance[address(arg1)][address(arg2)] -= arg3
    else:
        allowance[address(arg1)][address(arg2)] = 0
    return 1
}

function increaseApproval(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    require arg3 + allowance[address(arg1)][address(arg2)] >= allowance[address(arg1)][address(arg2)]
    require arg3 + allowance[address(arg1)][address(arg2)] >= arg3
    allowance[address(arg1)][address(arg2)] += arg3
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    if arg3 > balanceOf[address(arg1)]:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    return 1
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require controllerAddress == msg.sender
    if arg4 > balanceOf[address(arg2)]:
        return 0
    if allowance[address(arg2)][address(arg1)] < arg4:
        return 0
    require arg4 + balanceOf[address(arg3)] >= balanceOf[address(arg3)]
    require arg4 + balanceOf[address(arg3)] >= arg4
    balanceOf[address(arg3)] += arg4
    require arg4 <= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] - arg4
    require arg4 <= allowance[address(arg2)][address(arg1)]
    allowance[address(arg2)][address(arg1)] -= arg4
    return 1
}

function claimTokens(address arg1, address arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function multiMint(uint256 arg1, uint256[] arg2) {
    require owner == msg.sender
    require not stor7
    if arg1 == mintingNonce:
        mintingNonce++
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < arg2.length:
            mem[0] = Mask(160, 96, cd[((32 * idx) + arg2 + 36)]) >> 96
            mem[32] = 3
            balanceOf[Mask(160, 96, cd[((32 * idx) + arg2 + 36)])] += Mask(96, 0, cd[((32 * idx) + arg2 + 36)])
            mem[96] = 0xf5c86d2a00000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[132] = Mask(160, 96, cd[((32 * idx) + arg2 + 36)]) >> 96
            mem[164] = Mask(96, 0, cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(controllerAddress)
            call controllerAddress.0xf5c86d2a with:
                 gas gas_remaining wei
                args 0, Mask(160, 96, cd[((32 * idx) + arg2 + 36)]), Mask(96, 0, cd[((32 * idx) + arg2 + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = Mask(96, 0, cd[((32 * idx) + arg2 + 36)])
            s = Mask(160, 96, cd[((32 * idx) + arg2 + 36)]) >> 96
            idx = idx + 1
            s = Mask(96, 0, cd[((32 * idx) + arg2 + 36)]) + s
            continue 
        totalSupply += Mask(96, 0, cd[((32 * arg2.length) + arg2 + 36)]) * arg2.length
}



}
