contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor0 = 0
    stor1 = 418309 * 3600
    stor2 = stor1 + (720 * 24 * 3600)
    stor3 = stor1 + (168 * 24 * 3600)
    require not msg.value
    stor4 = msg.sender
    return code.data[132 len 4349]
}



// =====================  Runtime code  =====================


const name = 'ListICO Token'

const sub_0ab75b0d(?) = 300

const decimals = 8

const sub_75b7a66e(?) = 700

const symbol = 'LIP'

const RATE = 500


uint256 _totalSupply;
uint256 startTime;
uint256 endTime;
uint256 sub_e0479601;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalSupply
}

function endTime() {
    return endTime
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e0479601(?) {
    return sub_e0479601
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require startTime <= block.timestamp
    require endTime >= block.timestamp
    if block.timestamp > sub_e0479601:
        if msg.value:
            require msg.value
            require 500 * msg.value / msg.value == 500
            if msg.value:
                require msg.value
                require 300 * msg.value / msg.value == 300
        require balanceOf[address(msg.sender)] + (500 * msg.value) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 500 * msg.value
        require _totalSupply + (800 * msg.value) >= _totalSupply
        _totalSupply += 800 * msg.value
    else:
        if msg.value:
            require msg.value
            require 700 * msg.value / msg.value == 700
            if msg.value:
                require msg.value
                require 300 * msg.value / msg.value == 300
        require balanceOf[address(msg.sender)] + (700 * msg.value) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 700 * msg.value
        require _totalSupply + (1000 * msg.value) >= _totalSupply
        _totalSupply += 1000 * msg.value
    require balanceOf[stor4] + (300 * msg.value) >= balanceOf[stor4]
    balanceOf[stor4] += 300 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require msg.value > 0
    require startTime <= block.timestamp
    require endTime >= block.timestamp
    if block.timestamp > sub_e0479601:
        if msg.value:
            require msg.value
            require 500 * msg.value / msg.value == 500
            if msg.value:
                require msg.value
                require 300 * msg.value / msg.value == 300
        require balanceOf[address(msg.sender)] + (500 * msg.value) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 500 * msg.value
        require _totalSupply + (800 * msg.value) >= _totalSupply
        _totalSupply += 800 * msg.value
    else:
        if msg.value:
            require msg.value
            require 700 * msg.value / msg.value == 700
            if msg.value:
                require msg.value
                require 300 * msg.value / msg.value == 300
        require balanceOf[address(msg.sender)] + (700 * msg.value) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 700 * msg.value
        require _totalSupply + (1000 * msg.value) >= _totalSupply
        _totalSupply += 1000 * msg.value
    require balanceOf[stor4] + (300 * msg.value) >= balanceOf[stor4]
    balanceOf[stor4] += 300 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
