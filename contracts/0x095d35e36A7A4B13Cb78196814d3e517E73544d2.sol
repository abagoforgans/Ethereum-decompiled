contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
mapping of uint8 stor3;
mapping of uint256 sub_bd24e6a8;
mapping of uint256 sub_ca39c3f3;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
address owner;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_bd24e6a8(?) payable {
    require calldata.size - 4 >= 64
    return sub_bd24e6a8[arg1][arg2]
}

function sub_ca39c3f3(?) payable {
    require calldata.size - 4 >= 32
    return sub_ca39c3f3[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function sub_ee855d8a(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function sub_4c7af623(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor3[address(arg1)] = 0
}

function sub_d61391c8(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor3[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_f403c768(?) payable {
    require calldata.size - 4 >= 96
    require 1 == bool(stor3[msg.sender])
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    balances[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_7a9475f6(?) payable {
    require calldata.size - 4 >= 128
    require 1 == bool(stor3[msg.sender])
    sub_bd24e6a8[address(arg1)][stor5[address(arg1)]] = arg4
    sub_ca39c3f3[address(arg1)]++
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    balances[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= balances[address(arg1)]
    require allowed[address(arg1)][msg.sender] >= arg3
    balances[address(arg2)] += arg3
    balances[arg1] -= arg3
    allowed[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
