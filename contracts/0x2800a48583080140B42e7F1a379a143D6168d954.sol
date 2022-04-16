contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 stor7;

function _fallback() payable {
    stor1 = 70 * 10^6
    bool(stor2.length) = 0
    stor2.length.field_1 = 16
    stor2.length.field_8 = 'ICO not started.' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 0
    stor5 = 10^15
    require not msg.value
    stor0 = msg.sender
    stor3 = 250
    stor6 = 10^15
    stor7[stor0] = 100 * stor1
    return code.data[377 len 2740]
}



// =====================  Runtime code  =====================


const name = 'NeuroFlops'

const decimals = 2

const symbol = 'NFT'


address owner;
uint256 totalSupply;
array of uint256 sub_6917ba49;
uint256 sub_eac452bc;
uint8 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function sub_6917ba49(?) {
    return sub_6917ba49[0 len sub_6917ba49.length].field_0
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_eac452bc(?) {
    return sub_eac452bc
}

function sub_8858a466(?) {
    require owner == msg.sender
    selfdestruct(owner)
}

function sub_61ecf761(?) {
    require stor5
    return (stor6 / stor5)
}

function sub_e5cfc7f0(?) {
    require owner == msg.sender
    sub_eac452bc = arg1
    return 1
}

function sub_06db9f06(?) {
    require owner == msg.sender
    stor6 = arg1 * stor5
    return 1
}

function sub_86da5069(?) {
    require sub_eac452bc
    require stor6 / sub_eac452bc
    require balanceOf[stor0] >= 10^18 * arg1 / stor6 / sub_eac452bc
    require 10^18 * arg1 / stor6 / sub_eac452bc >= 100
    return (10^18 * arg1 / stor6 / sub_eac452bc / 100)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1 != msg.sender
    require arg2 > 0
    if owner != msg.sender:
        require arg1 != this.address
        require owner != arg1
    require msg.sender
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_1173f868(?) {
    require owner == msg.sender
    if not arg1:
        stor4 = 0
        bool(sub_6917ba49.length) = 0
        sub_6917ba49.length.field_1 = 16
        sub_6917ba49.length.field_8 = 'ICO is finished.' / 256
        idx = 0
        while sub_6917ba49.length + 31 / 32 > idx:
            sub_6917ba49[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor4 = 1
        bool(sub_6917ba49.length) = 0
        sub_6917ba49.length.field_1 = 10
        sub_6917ba49.length.field_8 = 'ICO is go.' / 256
        idx = 0
        while sub_6917ba49.length + 31 / 32 > idx:
            sub_6917ba49[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function buyTokens() payable {
    require stor4
    require sub_eac452bc
    require stor6 / sub_eac452bc
    require balanceOf[stor0] >= msg.value / stor6 / sub_eac452bc
    require msg.value / stor6 / sub_eac452bc >= 100
    if owner != msg.sender:
        require this.address != msg.sender
        require owner != msg.sender
    require owner
    require msg.sender
    require balanceOf[stor0] >= msg.value / stor6 / sub_eac452bc
    require msg.value / stor6 / sub_eac452bc > 0
    require balanceOf[address(msg.sender)] + (msg.value / stor6 / sub_eac452bc) > balanceOf[address(msg.sender)]
    balanceOf[stor0] -= msg.value / stor6 / sub_eac452bc
    balanceOf[msg.sender] += msg.value / stor6 / sub_eac452bc
    emit Transfer((msg.value / stor6 / sub_eac452bc), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require stor4
    require sub_eac452bc
    require stor6 / sub_eac452bc
    require balanceOf[stor0] >= msg.value / stor6 / sub_eac452bc
    require msg.value / stor6 / sub_eac452bc >= 100
    if owner != msg.sender:
        require this.address != msg.sender
        require owner != msg.sender
    require owner
    require msg.sender
    require balanceOf[stor0] >= msg.value / stor6 / sub_eac452bc
    require msg.value / stor6 / sub_eac452bc > 0
    require balanceOf[address(msg.sender)] + (msg.value / stor6 / sub_eac452bc) > balanceOf[address(msg.sender)]
    balanceOf[stor0] -= msg.value / stor6 / sub_eac452bc
    balanceOf[msg.sender] += msg.value / stor6 / sub_eac452bc
    emit Transfer((msg.value / stor6 / sub_eac452bc), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
