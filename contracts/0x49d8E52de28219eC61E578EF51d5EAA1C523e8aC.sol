contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
array of struct sub_ce21f4b1;
mapping of uint8 stor3;

function owner() payable {
    return owner
}

function sub_ce21f4b1(?) payable {
    require calldata.size - 4 >= 32
    require 0 < stor1.length
    idx = 0
    while stor1[idx] != arg1:
        require idx + 1 < stor1.length
        mem[0] = 1
        idx = idx + 1
        continue 
    if None + 2 < sub_ce21f4b1.length:
        return sub_ce21f4b1[None]
    revert
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyERC20Drain(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0x52da257423749b6a3155686f61dac3d045667f00, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function airdrop(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if stor3[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe61697264726f702073686f756c64206e6f7420626520706572666f726d6564206265666f72,
                    mem[202 len 26]
    require 0 < stor1.length
    idx = 0
    while stor1[idx] != arg2:
        require idx + 1 < stor1.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require None + 2 < sub_ce21f4b1.length
    stor3[address(arg2)] = 1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), sub_ce21f4b1[None]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenDrop(address(arg2), sub_ce21f4b1[None]);
}



}
