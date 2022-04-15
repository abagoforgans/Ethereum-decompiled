contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
array of uint256 stor5;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint8 stor6; offset 176
uint8 stor6; offset 184
uint8 stor6; offset 192

function _fallback() {
    mem[96 len -9963] = code.data[10538 len -9963]
    mem[64] = -9867
    stor0 = msg.sender
    require mem[140 len 20]
    stor1 = mem[140 len 20]
    stor2 = mem[140 len 20]
    stor3 = 0
    stor5[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    uint8(stor6.field_160) = mem[191 len 1]
    uint8(stor6.field_168) = mem[223 len 1]
    uint8(stor6.field_176) = mem[255 len 1]
    uint8(stor6.field_184) = mem[287 len 1]
    uint8(stor6.field_192) = mem[319 len 1]
    return code.data[575 len 9963]
}



// =====================  Runtime code  =====================


address owner;
address vendorAddress;
address providerAddress;
uint256 sub_a94dd032;
array of address products;
array of uint256 name;
uint8 stor6;
uint8 sub_e97da3c0; offset 160
uint8 sub_070c5b9d; offset 168
uint8 sub_f471e899; offset 176
uint8 sub_294c1777; offset 184
uint8 sub_46d1f9d8; offset 192
address tokenAddress;

function name() {
    return name[0 len name.length]
}

function sub_070c5b9d(?) {
    return sub_070c5b9d
}

function provider() {
    return providerAddress
}

function vendor() {
    return vendorAddress
}

function sub_294c1777(?) {
    return sub_294c1777
}

function sub_46d1f9d8(?) {
    return sub_46d1f9d8
}

function getProductsCount() {
    return products.length
}

function products(uint256 arg1) {
    require arg1 < products.length
    return address(products[arg1])
}

function owner() {
    return owner
}

function sub_a94dd032(?) {
    return sub_a94dd032
}

function sub_e97da3c0(?) {
    return sub_e97da3c0
}

function sub_f471e899(?) {
    return sub_f471e899
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function setVendorWallet(address arg1) {
    require owner == msg.sender
    vendorAddress = arg1
}

function setName(string arg1) {
    require owner == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    owner = arg1
}

function sub_9b76e47e(?) {
    mem[128 len arg1.length] = arg1[all]
    require owner == msg.sender
    require tokenAddress
    mem[ceil32(arg1.length) + 128 len 6454] = code.data[3466 len 6454]
    create contract with 0 wei
                    code: code.data[3466 len 6454], tokenAddress, products.length, Array(len=stor6, data=arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), arg3, arg4, arg5, stor6, stor6, stor6, stor6
    require create.new_address
    require ext_code.size(tokenAddress)
    call tokenAddress.0xcf456ae7 with:
         gas gas_remaining - 710 wei
        args address(create.new_address), 1
    require ext_call.success
    products.length++
    if not products.length <= products.length + 1:
        idx = products.length + 1
        while products.length > idx:
            uint256(products[idx]) = 0
            idx = idx + 1
            continue 
    address(products[products.length]) = address(create.new_address)
    emit 0xbaf667e3: address(create.new_address), Array(len=arg1.length, data=arg1[all]), arg2
    require products.length < products.length
    return address(products[products.length])
}

function sub_d4172f5c(?) {
    mem[128 len arg1.length] = arg1[all]
    require owner == msg.sender
    require tokenAddress
    mem[ceil32(arg1.length) + 128 len 6454] = code.data[3466 len 6454]
    mem[ceil32(arg1.length) + 6582] = tokenAddress
    mem[ceil32(arg1.length) + 6614] = products.length
    mem[ceil32(arg1.length) + 6678] = arg2
    mem[ceil32(arg1.length) + 6710] = 0
    mem[ceil32(arg1.length) + 6742] = 0
    mem[ceil32(arg1.length) + 6774] = sub_e97da3c0
    mem[ceil32(arg1.length) + 6806] = sub_070c5b9d
    mem[ceil32(arg1.length) + 6838] = sub_f471e899
    mem[ceil32(arg1.length) + 6870] = sub_294c1777
    mem[ceil32(arg1.length) + 6902] = sub_46d1f9d8
    mem[ceil32(arg1.length) + 6646] = 352
    mem[ceil32(arg1.length) + 6934] = arg1.length
    mem[ceil32(arg1.length) + 6966 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        create contract with 0 wei
                        code: code.data[3466 len 6454], tokenAddress, products.length, 352, arg2, 0, 0, stor6, stor6, stor6, stor6, stor6, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 6966] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 6998 len arg1.length % 32]
        create contract with 0 wei
                        code: code.data[3466 len 6454], tokenAddress, products.length, 352, arg2, 0, 0, stor6, stor6, stor6, stor6, stor6, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 6966 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    require create.new_address
    require ext_code.size(tokenAddress)
    call tokenAddress.0xcf456ae7 with:
         gas gas_remaining - 710 wei
        args address(create.new_address), 1
    require ext_call.success
    products.length++
    if not products.length <= products.length + 1:
        idx = products.length + 1
        while products.length > idx:
            uint256(products[idx]) = 0
            idx = idx + 1
            continue 
    address(products[products.length]) = address(create.new_address)
    mem[ceil32(arg1.length) + 128] = address(create.new_address)
    mem[ceil32(arg1.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xbaf667e3: address(create.new_address), 96, 0, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 256] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32]
        emit 0xbaf667e3: address(create.new_address), 96, 0, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 256 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    require products.length < products.length
    return address(products[products.length])
}



}
