contract main {




// =====================  Runtime code  =====================


const name = 'ABCCoin'

const sub_1b685465(?) = 10 * 10^6

const decimals = 18

const symbol = 'ABC'


uint256 totalSupply;
address stor1;
mapping of uint256 balance;
mapping of uint256 stor3;

function totalSupply() payable {
    return totalSupply
}

function balance(address arg1) payable {
    require calldata.size - 4 >= 32
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    stor3[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor1
    balance[address(arg1)] += arg2
    totalSupply += arg2
    emit 0xc349c93e: stor1, arg2
    emit Transfer(arg2, stor1, arg1);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    require balance[address(msg.sender)] >= arg1
    balance[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require balance[address(arg1)] >= arg2
    require arg2 <= stor3[address(arg1)][address(msg.sender)]
    balance[address(arg1)] -= arg2
    stor3[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(address(arg1), arg2);
    return 1
}

function _transfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg2 != arg1
    require balance[address(arg1)] >= arg3
    require balance[address(arg2)] + arg3 >= balance[address(arg2)]
    require arg3 > 0
    balance[address(arg1)] -= arg3
    balance[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balance[address(arg1)] + balance[address(arg2)] == balance[address(arg1)] + balance[address(arg2)]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != msg.sender
    require balance[address(msg.sender)] >= arg2
    require balance[address(arg1)] + arg2 >= balance[address(arg1)]
    require arg2 > 0
    balance[address(msg.sender)] -= arg2
    balance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balance[address(msg.sender)] + balance[address(arg1)] == balance[address(msg.sender)] + balance[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= stor3[address(arg1)][address(msg.sender)]
    require arg2
    require arg2 != arg1
    require balance[address(arg1)] >= arg3
    require balance[address(arg2)] + arg3 >= balance[address(arg2)]
    require arg3 > 0
    balance[address(arg1)] -= arg3
    balance[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balance[address(arg1)] + balance[address(arg2)] == balance[address(arg1)] + balance[address(arg2)]
    return 1
}



}
