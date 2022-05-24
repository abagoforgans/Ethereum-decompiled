contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
uint256 stor4;
array of uint256 stor5;
bool stor6; offset 256
uint32 stor6;
mapping of uint8 stor7;
mapping of struct transactions;
uint256 sub_0e111bdf;

function sub_0e111bdf(?) {
    return sub_0e111bdf
}

function supportedTokens(address arg1) {
    return bool(stor7[arg1])
}

function owner() {
    return owner
}

function executors(address arg1) {
    return bool(stor1[arg1])
}

function transactions(uint256 arg1) {
    mem[128] = transactions[arg1][3].field_0
    idx = 128
    s = 0
    while transactions[arg1][3].length + 96 > idx:
        mem[idx + 32] = transactions[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return transactions[arg1].field_0, 
           transactions[arg1].field_256,
           transactions[arg1].field_512,
           Array(len=transactions[arg1][3].length, data=mem[128 len transactions[arg1][3].length]),
           Mask(32, 224, transactions[arg1].field_1024)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function addToken(address arg1, bool arg2) {
    require msg.sender == owner
    stor7[address(arg1)] = uint8(arg2)
}

function setExecutor(address arg1, bool arg2) {
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
    emit 0xae8727d5: address(arg1), arg2
}

function burnTokens(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    require stor7[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(arg1)
    call arg1.0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require stor7[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a354ba59(?) {
    require stor1[address(msg.sender)]
    require stor7[stor8[arg1].field_0]
    require ext_code.size(transactions[arg1].field_0)
    call transactions[arg1].field_0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= transactions[arg1].field_512
    require ext_code.size(transactions[arg1].field_0)
    call transactions[arg1].field_0.0x42966c68 with:
         gas gas_remaining wei
        args transactions[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require stor7[address(msg.sender)]
    mem[ceil32(arg3.length) + 320 len arg3.length] = arg3[all]
    if arg3.length < 4:
        idx = 0
        s = 0
        while idx < arg3.length:
            require idx < arg3.length
            idx = idx + 1
            s = (Mask(32, 224, s) >> 224) + (mem[ceil32(arg3.length) + idx + 320 len 1] * 2^(8 * arg3.length + -idx - 1)) << 224
            continue 
        stor2 = msg.sender
        stor3 = arg1
        stor4 = arg2
        uint256(stor5[]) = Array(len=arg3.length, data=arg3[all])
        uint32(stor6.field_0) = Mask(32, 219, arg3.length) >> 219
    else:
        idx = 0
        s = 0
        while idx < 4:
            require idx < arg3.length
            idx = idx + 1
            s = (Mask(32, 224, s) >> 224) + (mem[ceil32(arg3.length) + idx + 320 len 1] * 2^(8 * -idx + 3)) << 224
            continue 
        stor2 = msg.sender
        stor3 = arg1
        stor4 = arg2
        uint256(stor5[]) = Array(len=arg3.length, data=arg3[all])
        uint32(stor6.field_0) = 0
        stor6.field_256 % 1 = 0
    transactions[stor9].field_0 = stor2
    transactions[stor9].field_256 = stor3
    transactions[stor9].field_512 = stor4
    if 31 >= stor5.length:
        transactions[stor9].field_768 = stor5.length
        idx = 0
        while transactions[stor9][3].length + 31 / 32 > idx:
            transactions[stor9][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        transactions[stor9].field_768 = Mask(255, 1, (256 * not bool(stor5.length)) - 1 and stor5.length) + 1
        if not Mask(255, 1, (256 * not bool(stor5.length)) - 1 and stor5.length):
            idx = 0
            while transactions[stor9][3].length + 31 / 32 > idx:
                transactions[stor9][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor5.length + 31 / 32 > idx:
                transactions[stor9][s + 3].field_0 = uint256(stor5[idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor5.length + 31 / 32
            while transactions[stor9][3].length + 31 / 32 > idx:
                transactions[stor9][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    transactions[stor9].field_1024 = 0
    transactions[stor9].field_1280 = 0
    emit 0x556abda3: msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
    sub_0e111bdf++
    return 0
}



}
