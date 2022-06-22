contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address newOwner;
uint256 version;
uint256 sub_f9f38bdf;
uint256 sub_99fc8254;
array of address tokenContracts;
array of struct sub_323f1142;
mapping of struct sub_b3356d37;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_12833b05(?) {
    return sub_b3356d37[arg1].field_0, 
           sub_b3356d37[arg1].field_256,
           sub_b3356d37[arg1].field_512,
           sub_b3356d37[arg1].field_768,
           sub_b3356d37[arg1].field_1024,
           sub_b3356d37[arg1].field_1280,
           sub_b3356d37[arg1].field_1536,
           sub_b3356d37[arg1].field_1792,
           bool(sub_b3356d37[arg1].field_2048)
}

function tokenContracts(uint256 arg1) {
    require arg1 < tokenContracts.length
    return tokenContracts[arg1]
}

function sub_323f1142(?) {
    require arg1 < sub_323f1142.length
    return sub_323f1142[arg1].field_0
}

function sub_49181b9b(?) {
    return sub_b3356d37[address(arg1)].field_0, 
           sub_b3356d37[address(arg1)].field_256,
           sub_b3356d37[address(arg1)].field_512,
           sub_b3356d37[address(arg1)].field_768,
           sub_b3356d37[address(arg1)].field_1024,
           sub_b3356d37[address(arg1)].field_1280
}

function sub_4f04c5c7(?) {
    return bool(stor1)
}

function version() {
    return version
}

function owner() {
    return owner
}

function sub_99fc8254(?) {
    return sub_99fc8254
}

function sub_b3356d37(?) {
    return sub_b3356d37[address(arg1)].field_1536, bool(sub_b3356d37[address(arg1)].field_2048)
}

function newOwner() {
    return newOwner
}

function sub_de34c6a2(?) {
    require tokenContracts.length - 1 < tokenContracts.length
    return tokenContracts[tokenContracts.length]
}

function sub_f9f38bdf(?) {
    return sub_f9f38bdf
}

function _fallback() payable {
    revert
}

function sub_18aa8f0b(?) {
    require msg.sender == owner
    stor1 = 0
    return 1
}

function sub_5cb17fa1(?) {
    require msg.sender == owner
    stor1 = 1
    return 1
}

function setFee(uint256 arg1) {
    require msg.sender == owner
    sub_99fc8254 = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
    return 1
}

function sub_33a8e7ff(?) {
    require msg.sender == owner
    sub_b3356d37[address(arg1)].field_2048 = 0
    sub_f9f38bdf++
    return 1
}

function setTokenContractAddress(address arg1) {
    require msg.sender == owner
    tokenContracts.length++
    stor36B6[stor5.length] = arg1
    return 1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
    return 1
}

function sub_f94a86ce(?) {
    if arg1 != msg.sender:
        require msg.sender == owner
    sub_b3356d37[address(arg1)].field_2048 = 1
    sub_f9f38bdf--
    emit 0x558e725a: arg2, arg3, arg4
    return 1
}

function sub_960a7101(?) {
    if not sub_323f1142.length:
        mem[(32 * sub_323f1142.length) + 128] = 32
        mem[(32 * sub_323f1142.length) + 160] = sub_323f1142.length
        mem[(32 * sub_323f1142.length) + 192 len floor32(sub_323f1142.length)] = mem[128 len floor32(sub_323f1142.length)]
        return memory
          from (32 * sub_323f1142.length) + 128
           len (96 * sub_323f1142.length) + 64
    mem[128] = address(sub_323f1142.field_0)
    idx = 128
    s = 0
    while (32 * sub_323f1142.length) + 96 > idx:
        mem[idx + 32] = sub_323f1142[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_323f1142.length) + 192 len floor32(sub_323f1142.length)] = mem[128 len floor32(sub_323f1142.length)]
    return Array(len=sub_323f1142.length, data=mem[128 len floor32(sub_323f1142.length)], mem[(32 * sub_323f1142.length) + floor32(sub_323f1142.length) + 192 len (32 * sub_323f1142.length) - floor32(sub_323f1142.length)]), 
}

function sub_b6ec6086(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require not stor1
    mem[(32 * arg3.length) + 128 len 14561] = code.data[3871 len 14561]
    mem[(32 * arg3.length) + 15041 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    create contract with 0 wei
                    code: code.data[3871 len 14561], arg1, arg2, Array(len=arg8, data=arg3.length, call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 15041 len (32 * arg3.length) - floor32(arg3.length)]), arg4, arg5, sub_99fc8254, address(this.address), arg6, arg7
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_323f1142.length++
    sub_323f1142[sub_323f1142.length].field_0 = address(create.new_address)
    require 0 < arg3.length
    mem[(32 * arg3.length) + 128] = mem[140 len 20]
    require 2 < arg3.length
    mem[(32 * arg3.length) + 160] = mem[204 len 20]
    require 4 < arg3.length
    mem[(32 * arg3.length) + 192] = mem[268 len 20]
    require 5 < arg3.length
    mem[(32 * arg3.length) + 224] = mem[300 len 20]
    require 6 < arg3.length
    mem[(32 * arg3.length) + 256] = mem[332 len 20]
    require 7 < arg3.length
    mem[(32 * arg3.length) + 288] = mem[364 len 20]
    sub_b3356d37[address(create.new_address)].field_0 = mem[(32 * arg3.length) + 140 len 20]
    sub_b3356d37[address(create.new_address)].field_256 = mem[(32 * arg3.length) + 172 len 20]
    sub_b3356d37[address(create.new_address)].field_512 = mem[(32 * arg3.length) + 204 len 20]
    sub_b3356d37[address(create.new_address)].field_768 = mem[(32 * arg3.length) + 236 len 20]
    sub_b3356d37[address(create.new_address)].field_1024 = mem[(32 * arg3.length) + 268 len 20]
    sub_b3356d37[address(create.new_address)].field_1280 = mem[(32 * arg3.length) + 300 len 20]
    sub_b3356d37[address(create.new_address)].field_1536 = arg2
    sub_b3356d37[address(create.new_address)].field_1792 = block.timestamp
    sub_b3356d37[address(create.new_address)].field_2048 = 0
    sub_f9f38bdf++
    emit EscrowCreated(address(create.new_address));
    return 1
}



}
