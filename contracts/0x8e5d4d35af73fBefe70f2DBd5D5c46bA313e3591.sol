contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_b6cc73f1(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_cebaf1bd(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_6080622c(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require arg1
    require arg2
    require arg1
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Transfer(arg3, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg1
    require msg.sender
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    require arg1
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferAndCall(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x76342c69 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}



}
