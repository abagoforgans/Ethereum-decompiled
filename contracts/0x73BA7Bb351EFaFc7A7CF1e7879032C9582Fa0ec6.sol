contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[1309 len 2809]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = 1
    require not msg.value
    stor0 = msg.sender
    return code.data[143 len 1166]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 stor2;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function transferToken() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function importBalances(uint256 arg1, address arg2) {
    require owner == msg.sender
    require arg1 > 0
    require ext_code.size(arg2)
    call arg2.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    s = 0
    s = 0
    idx = arg1
    while idx > 0:
        require ext_code.size(arg2)
        call arg2.investors(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args stor2
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0])
        require ext_call.success
        mem[100] = address(ext_call.return_data[0])
        mem[132] = ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require 1 <= idx
        require stor2 + 1 >= stor2
        stor2++
        s = ext_call.return_data[0]
        s = ext_call.return_data[0]
        idx = idx - 1
        continue 
    return 1
}



}
