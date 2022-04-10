contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor0 = 0
    stor2 = 0
    require not msg.value
    stor3 = msg.sender
    return code.data[67 len 2575]
}



// =====================  Runtime code  =====================


const _cap = 100 * 10^6

const name = 'OwO Token'

const decimals = 18

const symbol = 'OWO'


uint256 _totalSupply;
uint256 oneTokenInWei;
uint256 sub_65335198;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalSupply
}

function _totalSupply() {
    return _totalSupply
}

function sub_65335198(?) {
    return sub_65335198
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function oneTokenInWei() {
    return oneTokenInWei
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_03cc48c4(?) {
    require owner == msg.sender
    sub_65335198 = arg1
    emit changed(msg.sender);
}

function setRate(uint256 arg1) {
    require owner == msg.sender
    oneTokenInWei = arg1
    emit changed(msg.sender);
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
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require _totalSupply < 100 * 10^6
    require sub_65335198 < 1
    if not msg.value:
        if oneTokenInWei:
            if (10^18 * msg.value / oneTokenInWei) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                balanceOf[address(msg.sender)] += 10^18 * msg.value / oneTokenInWei
                if (10^18 * msg.value / oneTokenInWei) + _totalSupply >= _totalSupply:
                    _totalSupply += 10^18 * msg.value / oneTokenInWei
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    else:
        if msg.value:
            if 10^18 * msg.value / msg.value == 10^18:
                if oneTokenInWei:
                    if (10^18 * msg.value / oneTokenInWei) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / oneTokenInWei
                        if (10^18 * msg.value / oneTokenInWei) + _totalSupply >= _totalSupply:
                            _totalSupply += 10^18 * msg.value / oneTokenInWei
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
    revert
}

function createTokens() payable {
    require msg.value > 0
    require _totalSupply < 100 * 10^6
    require sub_65335198 < 1
    if not msg.value:
        if oneTokenInWei:
            if (10^18 * msg.value / oneTokenInWei) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                balanceOf[address(msg.sender)] += 10^18 * msg.value / oneTokenInWei
                if (10^18 * msg.value / oneTokenInWei) + _totalSupply >= _totalSupply:
                    _totalSupply += 10^18 * msg.value / oneTokenInWei
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    else:
        if msg.value:
            if 10^18 * msg.value / msg.value == 10^18:
                if oneTokenInWei:
                    if (10^18 * msg.value / oneTokenInWei) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / oneTokenInWei
                        if (10^18 * msg.value / oneTokenInWei) + _totalSupply >= _totalSupply:
                            _totalSupply += 10^18 * msg.value / oneTokenInWei
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
    revert
}



}
