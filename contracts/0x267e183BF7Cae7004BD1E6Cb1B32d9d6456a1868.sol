contract main {




// =====================  Runtime code  =====================


#
#  - sub_f026fe86(?)
#
address owner;
address sub_3ec7a073Address;
address sub_560addeaAddress;
address uniswapAddress;
address sub_4fb07214Address;

function sub_3ec7a073(?) {
    require msg.sender == owner
    return sub_3ec7a073Address
}

function sub_4fb07214(?) {
    require msg.sender == owner
    return sub_4fb07214Address
}

function sub_560addea(?) {
    require msg.sender == owner
    return sub_560addeaAddress
}

function owner() {
    return owner
}

function getUniswapAddress() {
    require msg.sender == owner
    return uniswapAddress
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_06963873(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_4fb07214Address = arg1
}

function sub_397c218f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_560addeaAddress = arg1
}

function sub_81bd9a07(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_3ec7a073Address = arg1
}

function updateUniswapAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    uniswapAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_07d47d97(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        call mem[idx + 128 len 20].mem[idx + 212 len 4] with:
           value mem[idx + 148] wei
             gas gas_remaining - 5000 wei
            args mem[idx + 216 len mem[idx + 180] - 4]
        require ext_call.success
        idx = idx + mem[idx + 180] + 84
        continue 
}

function sub_39a81219(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        call mem[idx + 128 len 20].mem[idx + 212 len 4] with:
           value mem[idx + 148] wei
             gas gas_remaining - 5000 wei
            args mem[idx + 216 len mem[idx + 180] - 4]
        require ext_call.success
        idx = idx + mem[idx + 180] + 84
        continue 
    if gas_remaining < 27710:
        if arg1 <= 0:
            if arg1:
                require ext_code.size(sub_4fb07214Address)
                call sub_4fb07214Address.freeFromUpTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if arg1 <= gas_remaining - 27710 / 7020:
            if arg1:
                require ext_code.size(sub_4fb07214Address)
                call sub_4fb07214Address.freeFromUpTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            if gas_remaining - 27710 / 7020:
                require ext_code.size(sub_4fb07214Address)
                call sub_4fb07214Address.freeFromUpTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, gas_remaining - 27710 / 7020
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
}



}
