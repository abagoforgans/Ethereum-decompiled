contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor9;

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    require not msg.value
    stor1 = msg.sender
    return code.data[247 len 8182]
}



// =====================  Runtime code  =====================


const name = 'Epic Lucky Coin'

const sub_0f27a6ca(?) = 1000

const decimals = 2

const symbol = 'ELC'

const maxTokens = 10^9


uint256 totalSupply;
address owner;
mapping of uint256 balances;
mapping of uint256 allowed;
uint256 pot;
address sub_41c4e1efAddress;
uint256 sub_081de367;
uint256 stor7; offset 1
uint256 sub_077788cb;
address sub_542f8e6bAddress;
uint256 sub_fa996779;

function sub_077788cb(?) {
    return sub_077788cb
}

function sub_081de367(?) {
    return sub_081de367
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_41c4e1ef(?) {
    return sub_41c4e1efAddress
}

function pot() {
    return pot
}

function sub_542f8e6b(?) {
    return sub_542f8e6bAddress
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function sub_fa996779(?) {
    return sub_fa996779
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function payout() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value > 0
    if sub_fa996779 != block.number:
        if block.number - sub_fa996779 < 256:
            if not sha3(block.hash(sub_fa996779)) % 200:
                require balances[stor8] + pot >= balances[stor8]
                balances[stor8] += pot
                emit Transfer(pot, this.address, sub_542f8e6bAddress);
                pot = 0
                sub_fa996779 = 0
                sub_542f8e6bAddress = 0
    if sub_081de367 != block.number:
        if block.number - sub_081de367 < 256:
            if not bool(sha3(block.hash(sub_081de367))):
                if balances[stor5] < stor7:
                    balances[stor5] = 0
                    require balances[stor5] <= totalSupply
                    totalSupply -= balances[stor5]
                    emit 0xcb68e069: sub_41c4e1efAddress, -balances[stor5]
                else:
                    require stor7 <= balances[stor5]
                    balances[stor5] -= stor7
                    require stor7 <= totalSupply
                    totalSupply -= stor7
                    emit 0xcb68e069: sub_41c4e1efAddress, -stor7
            else:
                require totalSupply + stor7 >= totalSupply
                if totalSupply + stor7 <= 10^9:
                    require balances[stor5] + stor7 >= balances[stor5]
                    balances[stor5] += stor7
                    require totalSupply + stor7 >= totalSupply
                    totalSupply += stor7
                    emit 0xcb68e069: sub_41c4e1efAddress, stor7
                else:
                    require totalSupply <= 10^9
                    require balances[stor5] + -totalSupply + 10^9 >= balances[stor5]
                    balances[stor5] = balances[stor5] + -totalSupply + 10^9
                    require 10^9 >= totalSupply
                    totalSupply = 10^9
                    emit 0xcb68e069: sub_41c4e1efAddress, -totalSupply + 10^9
            sub_081de367 = 0
            sub_41c4e1efAddress = 0
            sub_077788cb = 0
    sub_081de367 = block.number
    sub_41c4e1efAddress = msg.sender
    sub_077788cb = msg.value / 10^12
    require totalSupply + (msg.value / 10^12) >= totalSupply
    require totalSupply + (msg.value / 10^12) <= 10^9
    require balances[address(msg.sender)] + (msg.value / 10^12) >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value / 10^12
    require totalSupply + (msg.value / 10^12) >= totalSupply
    totalSupply += msg.value / 10^12
    emit 0xcb68e069: msg.sender, msg.value / 10^12
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require arg2 >= 1000
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    if sub_081de367 != block.number:
        if block.number - sub_081de367 < 256:
            if not bool(sha3(block.hash(sub_081de367))):
                if balances[stor5] < stor7:
                    balances[stor5] = 0
                    require balances[stor5] <= totalSupply
                    totalSupply -= balances[stor5]
                    emit 0xcb68e069: sub_41c4e1efAddress, -balances[stor5]
                else:
                    require stor7 <= balances[stor5]
                    balances[stor5] -= stor7
                    require stor7 <= totalSupply
                    totalSupply -= stor7
                    emit 0xcb68e069: sub_41c4e1efAddress, -stor7
            else:
                require totalSupply + stor7 >= totalSupply
                if totalSupply + stor7 <= 10^9:
                    require balances[stor5] + stor7 >= balances[stor5]
                    balances[stor5] += stor7
                    require totalSupply + stor7 >= totalSupply
                    totalSupply += stor7
                    emit 0xcb68e069: sub_41c4e1efAddress, stor7
                else:
                    require totalSupply <= 10^9
                    require balances[stor5] + -totalSupply + 10^9 >= balances[stor5]
                    balances[stor5] = balances[stor5] + -totalSupply + 10^9
                    require 10^9 >= totalSupply
                    totalSupply = 10^9
                    emit 0xcb68e069: sub_41c4e1efAddress, -totalSupply + 10^9
            sub_081de367 = 0
            sub_41c4e1efAddress = 0
            sub_077788cb = 0
    if sub_fa996779 != block.number:
        if block.number - sub_fa996779 < 256:
            if not sha3(block.hash(sub_fa996779)) % 200:
                require balances[stor8] + pot >= balances[stor8]
                balances[stor8] += pot
                emit Transfer(pot, this.address, sub_542f8e6bAddress);
                pot = 0
                sub_fa996779 = 0
                sub_542f8e6bAddress = 0
    sub_fa996779 = block.number
    sub_542f8e6bAddress = msg.sender
    require 1000 <= arg2
    require pot + 1000 >= pot
    pot += 1000
    require balances[address(arg1)] + arg2 - 1000 >= balances[address(arg1)]
    balances[address(arg1)] = balances[address(arg1)] + arg2 - 1000
    emit Transfer((arg2 - 1000), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    require arg3 >= 1000
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    if sub_081de367 != block.number:
        if block.number - sub_081de367 < 256:
            if not bool(sha3(block.hash(sub_081de367))):
                if balances[stor5] < stor7:
                    balances[stor5] = 0
                    require balances[stor5] <= totalSupply
                    totalSupply -= balances[stor5]
                    emit 0xcb68e069: sub_41c4e1efAddress, -balances[stor5]
                else:
                    require stor7 <= balances[stor5]
                    balances[stor5] -= stor7
                    require stor7 <= totalSupply
                    totalSupply -= stor7
                    emit 0xcb68e069: sub_41c4e1efAddress, -stor7
            else:
                require totalSupply + stor7 >= totalSupply
                if totalSupply + stor7 <= 10^9:
                    require balances[stor5] + stor7 >= balances[stor5]
                    balances[stor5] += stor7
                    require totalSupply + stor7 >= totalSupply
                    totalSupply += stor7
                    emit 0xcb68e069: sub_41c4e1efAddress, stor7
                else:
                    require totalSupply <= 10^9
                    require balances[stor5] + -totalSupply + 10^9 >= balances[stor5]
                    balances[stor5] = balances[stor5] + -totalSupply + 10^9
                    require 10^9 >= totalSupply
                    totalSupply = 10^9
                    emit 0xcb68e069: sub_41c4e1efAddress, -totalSupply + 10^9
            sub_081de367 = 0
            sub_41c4e1efAddress = 0
            sub_077788cb = 0
    if sub_fa996779 != block.number:
        if block.number - sub_fa996779 < 256:
            if not sha3(block.hash(sub_fa996779)) % 200:
                require balances[stor8] + pot >= balances[stor8]
                balances[stor8] += pot
                emit Transfer(pot, this.address, sub_542f8e6bAddress);
                pot = 0
                sub_fa996779 = 0
                sub_542f8e6bAddress = 0
    sub_fa996779 = block.number
    sub_542f8e6bAddress = msg.sender
    require 1000 <= arg3
    require pot + 1000 >= pot
    pot += 1000
    require balances[address(arg2)] + arg3 - 1000 >= balances[address(arg2)]
    balances[address(arg2)] = balances[address(arg2)] + arg3 - 1000
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer((arg3 - 1000), arg1, arg2);
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require arg2 >= 1000
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    if sub_081de367 != block.number:
        if block.number - sub_081de367 < 256:
            if not bool(sha3(block.hash(sub_081de367))):
                if balances[stor5] < stor7:
                    balances[stor5] = 0
                    require balances[stor5] <= totalSupply
                    totalSupply -= balances[stor5]
                    emit 0xcb68e069: sub_41c4e1efAddress, -balances[stor5]
                else:
                    require stor7 <= balances[stor5]
                    balances[stor5] -= stor7
                    require stor7 <= totalSupply
                    totalSupply -= stor7
                    emit 0xcb68e069: sub_41c4e1efAddress, -stor7
            else:
                require totalSupply + stor7 >= totalSupply
                if totalSupply + stor7 <= 10^9:
                    require balances[stor5] + stor7 >= balances[stor5]
                    balances[stor5] += stor7
                    require totalSupply + stor7 >= totalSupply
                    totalSupply += stor7
                    emit 0xcb68e069: sub_41c4e1efAddress, stor7
                else:
                    require totalSupply <= 10^9
                    require balances[stor5] + -totalSupply + 10^9 >= balances[stor5]
                    balances[stor5] = balances[stor5] + -totalSupply + 10^9
                    require 10^9 >= totalSupply
                    totalSupply = 10^9
                    emit 0xcb68e069: sub_41c4e1efAddress, -totalSupply + 10^9
            sub_081de367 = 0
            sub_41c4e1efAddress = 0
            sub_077788cb = 0
    if sub_fa996779 != block.number:
        if block.number - sub_fa996779 < 256:
            if not sha3(block.hash(sub_fa996779)) % 200:
                require balances[stor8] + pot >= balances[stor8]
                balances[stor8] += pot
                emit Transfer(pot, this.address, sub_542f8e6bAddress);
                pot = 0
                sub_fa996779 = 0
                sub_542f8e6bAddress = 0
    sub_fa996779 = block.number
    sub_542f8e6bAddress = msg.sender
    require 1000 <= arg2
    require pot + 1000 >= pot
    pot += 1000
    require balances[address(arg1)] + arg2 - 1000 >= balances[address(arg1)]
    balances[address(arg1)] = balances[address(arg1)] + arg2 - 1000
    emit Transfer((arg2 - 1000), msg.sender, arg1);
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    if ext_code.size(arg1) <= 0:
        return 1
    require ext_code.size(arg1)
    call arg1.0xc0ee0b8a with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
