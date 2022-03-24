contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor2; offset 160
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    create contract with 0 wei
                    code: code.data[437 len 2988], 0, 160, 0, 224, address(this.address), 10, 'GreenPower', 2, 'P+'
    stor1 = create.new_address or Mask(96, 160, stor1)
    create contract with 0 wei
                    code: code.data[3425 len 2988], 0, 160, 0, 224, address(this.address), 10, 'GreyPower', 2, 'P-'
    uint256(stor2.field_0) = Mask(96, 0, stor2.field_160)
    return code.data[6413 len 1391]
}



// =====================  Runtime code  =====================


address owner;
uint256 sellPrice;
uint256 buyPrice;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimalUnits;
uint256 totalSupply;
mapping of uint8 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimalUnits() payable {
    return decimalUnits
}

function sellPrice() payable {
    return sellPrice
}

function standard() payable {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function buyPrice() payable {
    return buyPrice
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) payable {
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) payable {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) payable {
    require owner == msg.sender
}

function setPrices(uint256 arg1, uint256 arg2) payable {
    require owner == msg.sender
}

function mintToken(address arg1, uint256 arg2) payable {
    require owner == msg.sender
}

function freezeAccount(address arg1, bool arg2) payable {
    require owner == msg.sender
}

function buy() payable {
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[msg.sender] += msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    emit 0x56ddf252: (msg.value / buyPrice), this.address, msg.sender
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require not stor8[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit 0x56ddf252: arg2, msg.sender, arg1
}

function sell(uint256 arg1) payable {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[this.address] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 0 wei
    require ext_call.success
    emit 0x56ddf252: arg1, msg.sender, this.address
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require not stor8[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0x56ddf252: arg3, arg1, arg2
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 292 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
        call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, arg3[all], mem[ceil32(arg3.length) + arg3.length + 292 len -(arg3.length % 32) + 32]
    require ext_call.success
    return 1
}



}
