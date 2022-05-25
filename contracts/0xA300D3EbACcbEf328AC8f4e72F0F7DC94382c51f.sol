contract main {




// =====================  Runtime code  =====================


const name = 'Vertify Token'

const decimals = 6

const symbol = 'VTK'

const TOTAL_SUPPLY = 10^15


mapping of uint256 balanceOf;
uint256 totalSupply;
address owner;
address adminAddress;
address stor4;
address stor5;
uint256 token_For_Circulation;
uint256 token_Saled;
uint256 token_Remaining;
uint256 limit_Amount;
uint256 eth_Amount;
uint256 see_price;
uint8 stor12;
uint8 stor12; offset 8
uint256 haltTime;
array of address stor14;
mapping of uint256 see_Ethweight;

function totalSupply() {
    return totalSupply
}

function Token_Remaining() {
    return token_Remaining
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function Limit_Amount() {
    return limit_Amount
}

function HaltTime() {
    return haltTime
}

function owner() {
    return owner
}

function selfOn() {
    return bool(uint8(stor12.field_8))
}

function price() {
    return see_price
}

function See_TokenPurchaser_Number() {
    return stor14.length
}

function showToken_For_Circulation() {
    return token_For_Circulation
}

function Token_For_Circulation() {
    return token_For_Circulation
}

function Eth_Amount() {
    return eth_Amount
}

function See_price() {
    return see_price
}

function Token_Saled() {
    return token_Saled
}

function See_Ethweight(address arg1) {
    return see_Ethweight[address(arg1)]
}

function admin() {
    return adminAddress
}

function getBalance(address arg1) {
    return eth.balance(arg1)
}

function VTKFallback(address arg1, uint256 arg2, uint256 arg3) {
  stop
}

function setSelfOn() {
    require msg.sender == owner
    uint8(stor12.field_8) = 1
}

function setSelfOff() {
    require msg.sender == owner
    uint8(stor12.field_8) = 0
}

function setNewWallet(address arg1) {
    require msg.sender == owner
    stor5 = arg1
}

function SetAddrForMortgage(address arg1) {
    require msg.sender == owner
    stor4 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function halt() {
    require msg.sender == owner
    uint8(stor12.field_0) = 1
    haltTime = block.timestamp
}

function transferIt(address arg1) {
    require msg.sender == adminAddress
    if arg1:
        adminAddress = arg1
}

function Set_Limit_Amount(uint256 arg1) {
    require msg.sender == owner
    require token_Saled < token_For_Circulation
    limit_Amount = arg1
}

function Apply(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
}

function clearRAMAll() {
    require msg.sender == owner
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        address(stor14[idx]) = 0
        idx = idx + 1
        continue 
}

function unhalt() {
    require msg.sender == owner
    uint8(stor12.field_0) = 0
    require block.timestamp + (43800 * 24 * 3600) >= block.timestamp
    haltTime = block.timestamp + (43800 * 24 * 3600)
}

function unhalt_30day() {
    require msg.sender == owner
    uint8(stor12.field_0) = 0
    require block.timestamp + (720 * 24 * 3600) >= block.timestamp
    haltTime = block.timestamp + (720 * 24 * 3600)
}

function unhalt_15day() {
    require msg.sender == owner
    uint8(stor12.field_0) = 0
    require block.timestamp + (360 * 24 * 3600) >= block.timestamp
    haltTime = block.timestamp + (360 * 24 * 3600)
}

function SOSBOTTOM() {
    require msg.sender == owner
    stor14.length = 0
    if stor14.length > 0:
        idx = 0
        while stor14.length > idx:
            uint256(stor14[idx]) = 0
            idx = idx + 1
            continue 
}

function setWeight(address arg1, uint256 arg2) {
    require msg.sender == owner
    see_Ethweight[address(arg1)] = arg2
    stor14.length++
    address(stor14[stor14.length]) = arg1
    require arg2 + eth_Amount >= eth_Amount
    eth_Amount += arg2
}

function getAllFunding() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getFunding(uint256 arg1) {
    require msg.sender == adminAddress
    call adminAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenForCireculation(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= token_Remaining
    require arg1 + token_For_Circulation >= token_For_Circulation
    token_For_Circulation += arg1
    require arg1 <= token_Remaining
    token_Remaining -= arg1
    return 1
}

function clearRAM() {
    idx = 0
    while idx < stor14.length:
        mem[0] = address(stor14[idx])
        mem[32] = 16
        if not see_Ethweight[address(stor14[idx])]:
            require idx < stor14.length
            mem[0] = 14
            address(stor14[idx]) = 0
        idx = idx + 1
        continue 
}

function transferFromIt(address arg1, address arg2, uint256 arg3) {
    require msg.sender == adminAddress
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
}

function transferToContract(address arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(arg1) > 0
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[msg.sender] = balanceOf[address(msg.sender)] - arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require ext_code.size(arg1)
    call arg1.0xb26915aa with:
         gas gas_remaining wei
        args msg.sender, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[msg.sender]
    if ext_code.size(arg1) <= 0:
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    else:
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[msg.sender] = balanceOf[address(msg.sender)] - arg2
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require ext_code.size(arg1)
        call arg1.0xb26915aa with:
             gas gas_remaining wei
            args msg.sender, arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if owner != msg.sender:
        require not uint8(stor12.field_0)
        require block.timestamp < haltTime
        require token_Saled < token_For_Circulation
        see_Ethweight[address(msg.sender)] += msg.value
        stor14.length++
        address(stor14[stor14.length]) = msg.sender
        require msg.value + eth_Amount >= eth_Amount
        eth_Amount += msg.value
        if not msg.value:
            if not msg.value:
                call stor5 with:
                     gas 2300 wei
            else:
                require 8 * msg.value / msg.value == 8
                call stor5 with:
                   value 8 * msg.value / 10 wei
                     gas 2300 * is_zero(value) wei
            call stor4 with:
                 gas 2300 wei
        else:
            require 2 * msg.value / msg.value == 2
            if not msg.value:
                call stor5 with:
                     gas 2300 wei
            else:
                require 8 * msg.value / msg.value == 8
                call stor5 with:
                   value 8 * msg.value / 10 wei
                     gas 2300 * is_zero(value) wei
            call stor4 with:
               value 2 * msg.value / 10 wei
                 gas 2300 * is_zero(value) wei
}

function Eth_Ransom(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    require msg.sender == adminAddress
    require this.address
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[address(this.address)] = arg1 + balanceOf[this.address]
    emit Transfer(arg1, msg.sender, this.address);
    require token_Saled
    require 5 * eth.balance(stor4) / token_Saled
    see_price = 10^18 / 5 * eth.balance(stor4) / token_Saled
    if not arg1:
        require see_price
        if not 0 / see_price:
            call msg.sender with:
                 gas 2300 wei
        else:
            require 80 * 0 / see_price / 0 / see_price == 80
            call msg.sender with:
               value 80 * 0 / see_price / 100 wei
                 gas 2300 * is_zero(value) wei
    else:
        require 10^18 * arg1 / arg1 == 10^18
        require see_price
        if not 10^18 * arg1 / see_price:
            call msg.sender with:
                 gas 2300 wei
        else:
            require 80 * 10^18 * arg1 / see_price / 10^18 * arg1 / see_price == 80
            call msg.sender with:
               value 80 * 10^18 * arg1 / see_price / 100 wei
                 gas 2300 * is_zero(value) wei
}

function getTokenBySelf() {
    require 1 == bool(uint8(stor12.field_8))
    require block.timestamp > haltTime
    require see_Ethweight[msg.sender]
    if not see_Ethweight[msg.sender]:
        require eth_Amount
        require msg.sender == adminAddress
        require msg.sender
        require 0 / eth_Amount <= balanceOf[address(this.address)]
        require 0 / eth_Amount <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= 0 / eth_Amount
        require (0 / eth_Amount) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (0 / eth_Amount) + balanceOf[msg.sender]
        emit Transfer((0 / eth_Amount), this.address, msg.sender);
    else:
        require limit_Amount * see_Ethweight[msg.sender] / see_Ethweight[msg.sender] == limit_Amount
        require eth_Amount
        require msg.sender == adminAddress
        require msg.sender
        require limit_Amount * see_Ethweight[msg.sender] / eth_Amount <= balanceOf[address(this.address)]
        require limit_Amount * see_Ethweight[msg.sender] / eth_Amount <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= limit_Amount * see_Ethweight[msg.sender] / eth_Amount
        require (limit_Amount * see_Ethweight[msg.sender] / eth_Amount) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (limit_Amount * see_Ethweight[msg.sender] / eth_Amount) + balanceOf[msg.sender]
        emit Transfer((limit_Amount * see_Ethweight[msg.sender] / eth_Amount), this.address, msg.sender);
    see_Ethweight[msg.sender] = 0
}

function getToken() {
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < stor14.length:
        mem[0] = address(stor14[idx])
        mem[32] = 16
        if not see_Ethweight[address(stor14[idx])]:
            s = s
            idx = idx + 1
            continue 
        require idx < stor14.length
        if not see_Ethweight[address(stor14[idx])]:
            require eth_Amount
            require idx < stor14.length
            require msg.sender == adminAddress
            require address(stor14[idx])
            require 0 / eth_Amount <= balanceOf[address(this.address)]
            require 0 / eth_Amount <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= 0 / eth_Amount
            require (0 / eth_Amount) + balanceOf[address(stor14[idx])] >= balanceOf[address(stor14[idx])]
            balanceOf[address(stor14[idx])] += 0 / eth_Amount
            mem[96] = 0 / eth_Amount
            emit Transfer((0 / eth_Amount), this.address, address(stor14[idx]));
            require idx < stor14.length
            mem[0] = address(stor14[idx])
            mem[32] = 16
            see_Ethweight[address(stor14[idx])] = 0
            s = 0 / eth_Amount
            idx = idx + 1
            continue 
        require limit_Amount * see_Ethweight[address(stor14[idx])] / see_Ethweight[address(stor14[idx])] == limit_Amount
        require eth_Amount
        require idx < stor14.length
        require msg.sender == adminAddress
        require address(stor14[idx])
        require limit_Amount * see_Ethweight[address(stor14[idx])] / eth_Amount <= balanceOf[address(this.address)]
        require limit_Amount * see_Ethweight[address(stor14[idx])] / eth_Amount <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= limit_Amount * see_Ethweight[address(stor14[idx])] / eth_Amount
        require (limit_Amount * see_Ethweight[address(stor14[idx])] / eth_Amount) + balanceOf[address(stor14[idx])] >= balanceOf[address(stor14[idx])]
        balanceOf[address(stor14[idx])] += limit_Amount * see_Ethweight[address(stor14[idx])] / eth_Amount
        mem[96] = limit_Amount * see_Ethweight[address(stor14[idx])] / eth_Amount
        emit Transfer((limit_Amount * see_Ethweight[address(stor14[idx])] / eth_Amount), this.address, address(stor14[idx]));
        require idx < stor14.length
        mem[0] = address(stor14[idx])
        mem[32] = 16
        see_Ethweight[address(stor14[idx])] = 0
        s = limit_Amount * see_Ethweight[address(stor14[idx])] / eth_Amount
        idx = idx + 1
        continue 
    require limit_Amount + token_Saled >= token_Saled
    token_Saled += limit_Amount
    stor14.length = 0
    if stor14.length > 0:
        idx = 0
        while stor14.length > idx:
            uint256(stor14[idx]) = 0
            idx = idx + 1
            continue 
    eth_Amount = 0
    require token_Saled
    require 5 * eth.balance(stor4) / token_Saled
    see_price = 10^18 / 5 * eth.balance(stor4) / token_Saled
}



}
