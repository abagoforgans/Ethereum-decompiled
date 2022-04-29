contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 10^18
    stor3 = 1000
    stor0 = msg.sender
    return code.data[66 len 1941]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 approvedContracts;
uint256 sub_bc9113f0;
uint256 sub_011dca50;

function sub_011dca50(?) {
    return sub_011dca50
}

function approvedContracts(address arg1) {
    return approvedContracts[arg1]
}

function owner() {
    return owner
}

function sub_bc9113f0(?) {
    return sub_bc9113f0
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_964ad38e(?) {
    require owner == msg.sender
    approvedContracts[address(arg1)] = 0
}

function approveContract(address arg1) {
    require owner == msg.sender
    approvedContracts[address(arg1)] = 1
}

function withdrawEther() {
    require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_e719fb66(?) {
    require owner == msg.sender
    if arg1:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2
        require ext_call.success
}

function sub_071e41d7(?) {
    require owner == msg.sender
    if arg1:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
}

function sub_784f50d5(?) {
    require approvedContracts[address(msg.sender)] == 1
    require arg2 > 0
    if arg5:
        require arg5
        require sub_bc9113f0 * arg5 / arg5 == sub_bc9113f0
    require arg2
    if sub_bc9113f0 * arg5 / arg2:
        require sub_bc9113f0 * arg5 / arg2
        require arg3 * sub_bc9113f0 * arg5 / arg2 / sub_bc9113f0 * arg5 / arg2 == arg3
    require sub_011dca50
    if arg3 * sub_bc9113f0 * arg5 / arg2 / sub_011dca50 > 0:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= arg3 * sub_bc9113f0 * arg5 / arg2 / sub_011dca50
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg4), arg3 * sub_bc9113f0 * arg5 / arg2 / sub_011dca50
        require ext_call.success
}

function sub_d6caaeaa(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require owner == msg.sender
        if mem[(32 * idx) + 140 len 20]:
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            mem[(32 * arg1.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_14))
            call address(_14).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0]
            require ext_call.success
        idx = idx + 1
        continue 
}



}
