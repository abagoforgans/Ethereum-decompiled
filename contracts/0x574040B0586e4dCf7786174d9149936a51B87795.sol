contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = code.data[7781 len 20]
    stor2 = msg.sender
    return code.data[188 len 7581]
}



// =====================  Runtime code  =====================


address stor0;
uint256 tokenCost;
address stor2;
mapping of struct stor3;
mapping of uint256 stor4;

function tokenCost() {
    return tokenCost
}

function kill() {
    if stor2 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if msg.sender == stor2:
        stor2 = arg1
}

function setCost(uint256 arg1) {
    if msg.sender == stor2:
        tokenCost = arg1
}

function transfer(uint256 arg1) {
    if msg.sender == stor2:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
}

function cancelQuery(uint256 arg1) {
    require stor3[arg1].field_256 == msg.sender
    require stor3[arg1].field_0 == msg.sender
    stor3[arg1].field_1024 = 1
}

function transfer(address arg1, uint256 arg2) {
    if msg.sender == stor2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
}

function getTokenBalance() {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function depositToken(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    stor4[address(msg.sender)] += arg1
    return 1
}

function withdrawToken(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require arg1 <= stor4[address(msg.sender)]
    stor4[address(msg.sender)] -= arg1
    return 1
}

function withdrawToken(address arg1, uint256 arg2) {
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require arg2 <= stor4[address(arg1)]
    stor4[address(arg1)] -= arg2
    return 1
}

function sub_eaa2a6f7(?) {
    stor3[block.number][block.timestamp][arg2[all]][msg.sender].field_0 = msg.sender
    stor3[block.number][block.timestamp][arg2[all]][msg.sender].field_256 = arg1
    stor3[block.number][block.timestamp][arg2[all]][msg.sender].field_512 = tx.origin
    stor3[block.number][block.timestamp][arg2[all]][msg.sender].field_768 = arg3
    stor3[block.number][block.timestamp][arg2[all]][msg.sender].field_1024 = 0
    stor3[block.number][block.timestamp][arg2[all]][msg.sender].field_1280 = 0
    emit 0x965f2ea4: sha3(block.number, block.timestamp, arg2[all], msg.sender), msg.sender, address(arg1), Array(len=arg2.length, data=arg2[all]), arg3
    return sha3(block.number, block.timestamp, arg2[all], msg.sender)
}

function respond1(uint256 arg1, string arg2) {
    require stor3[arg1].field_256 == msg.sender
    require tokenCost <= stor3[arg1].field_768
    require stor3[arg1].field_1024 <= 2
    require not stor3[arg1].field_1024
    if tokenCost > 0:
        require tokenCost <= stor4[stor3[arg1].field_512]
        stor4[stor3[arg1].field_512] -= tokenCost
        require tokenCost <= stor3[arg1].field_768
        stor3[arg1].field_768 -= tokenCost
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3[arg1].field_256, tokenCost
        require ext_call.success
    stor3[arg1].field_1024 = 2
    require ext_code.size(stor3[arg1].field_0)
    call stor3[arg1].field_0.0xac396655 with:
         gas gas_remaining - 710 wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    require ext_call.success
}

function respond2(uint256 arg1, string arg2, string arg3) {
    require stor3[arg1].field_256 == msg.sender
    require tokenCost <= stor3[arg1].field_768
    require stor3[arg1].field_1024 <= 2
    require not stor3[arg1].field_1024
    if tokenCost <= 0:
        stor3[arg1].field_1024 = 2
        require ext_code.size(stor3[arg1].field_0)
        call stor3[arg1].field_0.0xe8de272 with:
             gas gas_remaining - 710 wei
            args 0, uint32(arg1), 96, arg2.length + 128, arg2.length, arg2[all], arg3.length, arg3[all]
    else:
        require tokenCost <= stor4[stor3[arg1].field_512]
        stor4[stor3[arg1].field_512] -= tokenCost
        require tokenCost <= stor3[arg1].field_768
        stor3[arg1].field_768 -= tokenCost
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3[arg1].field_256, tokenCost
        require ext_call.success
        stor3[arg1].field_1024 = 2
        require ext_code.size(stor3[arg1].field_0)
        call stor3[arg1].field_0.0xe8de272 with:
             gas gas_remaining - 710 wei
            args 0, 0, 96, arg2.length + 128, arg2.length, arg2[all], arg3.length, arg3[all]
    require ext_call.success
    return 0
}

function respond3(uint256 arg1, string arg2, string arg3, string arg4) {
    require stor3[arg1].field_256 == msg.sender
    require tokenCost <= stor3[arg1].field_768
    require stor3[arg1].field_1024 <= 2
    require not stor3[arg1].field_1024
    if tokenCost <= 0:
        stor3[arg1].field_1024 = 2
        require ext_code.size(stor3[arg1].field_0)
        call stor3[arg1].field_0.0xfc8b3c01 with:
             gas gas_remaining - 710 wei
            args 0, uint32(arg1), 128, arg2.length + 160, arg2.length + arg3.length + 192, arg2.length, arg2[all], arg3.length, arg3[all], arg4.length, arg4[all]
    else:
        require tokenCost <= stor4[stor3[arg1].field_512]
        stor4[stor3[arg1].field_512] -= tokenCost
        require tokenCost <= stor3[arg1].field_768
        stor3[arg1].field_768 -= tokenCost
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3[arg1].field_256, tokenCost
        require ext_call.success
        stor3[arg1].field_1024 = 2
        require ext_code.size(stor3[arg1].field_0)
        call stor3[arg1].field_0.0xfc8b3c01 with:
             gas gas_remaining - 710 wei
            args 0, 0, 128, arg2.length + 160, arg2.length + arg3.length + 192, arg2.length, arg2[all], arg3.length, arg3[all], arg4.length, arg4[all]
    require ext_call.success
    return 0
}

function sub_cedfd5f0(?) {
    require stor3[arg1].field_256 == msg.sender
    require tokenCost <= stor3[arg1].field_768
    require stor3[arg1].field_1024 <= 2
    require not stor3[arg1].field_1024
    if tokenCost <= 0:
        stor3[arg1].field_1024 = 2
        require ext_code.size(stor3[arg1].field_0)
        call stor3[arg1].field_0.0x9911df52 with:
             gas gas_remaining - 710 wei
            args 0, uint32(arg1), 160, arg2.length + 192, arg2.length + arg3.length + 224, arg2.length + arg3.length + arg4.length + 256, arg2.length, arg2[all], arg3.length, arg3[all], arg4.length, arg4[all], arg5.length, arg5[all]
    else:
        require tokenCost <= stor4[stor3[arg1].field_512]
        stor4[stor3[arg1].field_512] -= tokenCost
        require tokenCost <= stor3[arg1].field_768
        stor3[arg1].field_768 -= tokenCost
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3[arg1].field_256, tokenCost
        require ext_call.success
        stor3[arg1].field_1024 = 2
        require ext_code.size(stor3[arg1].field_0)
        call stor3[arg1].field_0.0x9911df52 with:
             gas gas_remaining - 710 wei
            args 0, 0, 160, arg2.length + 192, arg2.length + arg3.length + 224, arg2.length + arg3.length + arg4.length + 256, arg2.length, arg2[all], arg3.length, arg3[all], arg4.length, arg4[all], arg5.length, arg5[all]
    require ext_call.success
    return 0
}

function respond4(uint256 arg1, string arg2, string arg3, string arg4, string arg5) {
    require stor3[arg1].field_256 == msg.sender
    require tokenCost <= stor3[arg1].field_768
    require stor3[arg1].field_1024 <= 2
    require not stor3[arg1].field_1024
    if tokenCost <= 0:
        stor3[arg1].field_1024 = 2
        require ext_code.size(stor3[arg1].field_0)
        call stor3[arg1].field_0.0x9911df52 with:
             gas gas_remaining - 710 wei
            args 0, uint32(arg1), 160, arg2.length + 192, arg2.length + arg3.length + 224, arg2.length + arg3.length + arg4.length + 256, arg2.length, arg2[all], arg3.length, arg3[all], arg4.length, arg4[all], arg5.length, arg5[all]
    else:
        require tokenCost <= stor4[stor3[arg1].field_512]
        stor4[stor3[arg1].field_512] -= tokenCost
        require tokenCost <= stor3[arg1].field_768
        stor3[arg1].field_768 -= tokenCost
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3[arg1].field_256, tokenCost
        require ext_call.success
        stor3[arg1].field_1024 = 2
        require ext_code.size(stor3[arg1].field_0)
        call stor3[arg1].field_0.0x9911df52 with:
             gas gas_remaining - 710 wei
            args 0, 0, 160, arg2.length + 192, arg2.length + arg3.length + 224, arg2.length + arg3.length + arg4.length + 256, arg2.length, arg2[all], arg3.length, arg3[all], arg4.length, arg4[all], arg5.length, arg5[all]
    require ext_call.success
    return 0
}



}
