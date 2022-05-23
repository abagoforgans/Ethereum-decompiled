contract main {




// =====================  Runtime code  =====================


const name = 'Orinoco D. F. Co-founder Token'

const etherAddress = 0xfc20a4238abafbfa29f582cbcf93e23cd3c9858b

const decimals = 18

const exchangeRate = 500

const crowdsaleEnd = (426672 * 24 * 3600)

const teamWallet = 0x4c646420d8a8ae7c66de9c40ffe31c295c87272b

const saleWallet = 0x9d4537094fa30d8042a51f4f0cd29f170b28456b

const symbol = 'CTFO'

const crowdsaleStart = (426168 * 24 * 3600)

const INITIAL_SUPPLY = 1000000 * 10^18

const SALE_TOKENS = 860000 * 10^18

const TEAM_TOKENS = 140000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3;
uint256 storA545;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(stor3)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(uint256 arg1) {
    require not stor3
    require 0x9d4537094fa30d8042a51f4f0cd29f170b28456b == msg.sender
    if block.timestamp <= 426672 * 24 * 3600:
        require not balanceOf[msg.sender]
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    if not balanceOf[address(msg.sender)]:
        stor3 = 1
}

function _fallback() payable {
    require block.timestamp >= 426168 * 24 * 3600
    require block.timestamp <= 426672 * 24 * 3600
    require msg.value >= 10^18
    if not msg.value:
        require storA545 >= 0
        emit Transfer(0, 0x9d4537094fa30d8042a51f4f0cd29f170b28456b, msg.sender);
    else:
        require 500 * msg.value / msg.value == 500
        require storA545 >= 500 * msg.value
        storA545 += -500 * msg.value
        balanceOf[msg.sender] += 500 * msg.value
        emit Transfer((500 * msg.value), 0x9d4537094fa30d8042a51f4f0cd29f170b28456b, msg.sender);
    if not msg.value:
        call 0xfc20a4238abafbfa29f582cbcf93e23cd3c9858b with:
             gas 2300 wei
    else:
        require 90 * msg.value / msg.value == 90
        call 0xfc20a4238abafbfa29f582cbcf93e23cd3c9858b with:
           value 90 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        call 0x4c646420d8a8ae7c66de9c40ffe31c295c87272b with:
             gas 2300 wei
    else:
        require 10 * msg.value / msg.value == 10
        call 0x4c646420d8a8ae7c66de9c40ffe31c295c87272b with:
           value 10 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function purchaseTokens() payable {
    require block.timestamp >= 426168 * 24 * 3600
    require block.timestamp <= 426672 * 24 * 3600
    require msg.value >= 10^18
    if not msg.value:
        require storA545 >= 0
        emit Transfer(0, 0x9d4537094fa30d8042a51f4f0cd29f170b28456b, msg.sender);
    else:
        require 500 * msg.value / msg.value == 500
        require storA545 >= 500 * msg.value
        storA545 += -500 * msg.value
        balanceOf[msg.sender] += 500 * msg.value
        emit Transfer((500 * msg.value), 0x9d4537094fa30d8042a51f4f0cd29f170b28456b, msg.sender);
    if not msg.value:
        call 0xfc20a4238abafbfa29f582cbcf93e23cd3c9858b with:
             gas 2300 wei
    else:
        require 90 * msg.value / msg.value == 90
        call 0xfc20a4238abafbfa29f582cbcf93e23cd3c9858b with:
           value 90 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        call 0x4c646420d8a8ae7c66de9c40ffe31c295c87272b with:
             gas 2300 wei
    else:
        require 10 * msg.value / msg.value == 10
        call 0x4c646420d8a8ae7c66de9c40ffe31c295c87272b with:
           value 10 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
