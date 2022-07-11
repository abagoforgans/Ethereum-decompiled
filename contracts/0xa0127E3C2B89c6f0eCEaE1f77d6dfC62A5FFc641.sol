contract main {




// =====================  Runtime code  =====================


const name = 'Fressets Token'

const decimals = 2

const symbol = 'FRS'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;

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

function _fallback() payable {
    revert
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_ed4def7e(?) payable {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    owner = address(signer)
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require balanceOf[address(msg.sender)] + arg1 > balanceOf[address(msg.sender)]
    totalSupply += arg1
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
