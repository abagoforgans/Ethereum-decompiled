contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    require not msg.value
    return code.data[91 len 2918]
}



// =====================  Runtime code  =====================


const getVersion = 1


address owner;
address stor1;

function owner() {
    return owner
}

function close() {
    require owner == msg.sender
    selfdestruct(owner)
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_f1b83630(?) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_2cf2c0af(?) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function balanceOf(address arg1) {
    require ext_code.size(stor1)
    call stor1.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_5c73dcea(?) {
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10, this.address
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_5dfb7f3f(?) {
    require owner == msg.sender
    mem[192] = arg4
    mem[224] = arg5
    mem[256] = arg6
    mem[288] = arg7
    mem[320] = arg8
    mem[352] = arg9
    idx = 0
    while idx < 6:
        require idx < 6
        require idx + 13
        require idx < 6
        mem[(32 * idx) + 192] = mem[(32 * idx) + 192] / idx + 13
        idx = idx + 1
        continue 
    require owner == msg.sender
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args address(arg1), mem[192], address(arg2), mem[224], mem[288], mem[320], address(arg3), mem[383 len 1], arg10, arg11, mem[256], this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0x34d6d9be: 21
    else:
        emit 0x34d6d9be: 20
        require ext_code.size(stor1)
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args address(arg1), mem[192], address(arg2), mem[224], mem[288], mem[320], address(arg3), mem[383 len 1], arg10, arg11, mem[256]
        require ext_call.success
}

function sub_cb75bb56(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require owner == msg.sender
    require 0 < arg3.length
    require 1 < arg3.length
    require owner == msg.sender
    require 5 < arg2.length
    require 0 < arg1.length
    require 0 < arg2.length
    require 1 < arg1.length
    require 1 < arg2.length
    require 3 < arg2.length
    require 4 < arg2.length
    require 2 < arg1.length
    require 2 < arg2.length
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args mem[140 len 20], mem[(32 * arg1.length) + 160], mem[172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], address(mem[192]), mem[(32 * arg1.length) + 320] << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224], mem[(32 * arg1.length) + 224], this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0x34d6d9be: 21
    else:
        emit 0x34d6d9be: 20
        require ext_code.size(stor1)
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args mem[140 len 20], mem[(32 * arg1.length) + 160], mem[172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], address(mem[192]), mem[(32 * arg1.length) + 320] << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224], mem[(32 * arg1.length) + 224]
        require ext_call.success
}



}
