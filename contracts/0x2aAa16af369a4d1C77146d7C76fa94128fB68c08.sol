contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor4 = 3 * 10^12
    stor5 = 7500 * 10^6 * 24 * 3600
    require not msg.value
    stor3 = msg.sender
    stor0 = 39 * 10^12
    stor1[address(this.address)] = 39 * 10^12
    emit Transfer(39 * 10^12, 0, this.address);
    return code.data[167 len 3483]
}



// =====================  Runtime code  =====================


const name = 'Luven Diagnostic'

const decimals = 6

const symbol = 'LVN'

const price = 3448275862

const INITIAL_SUPPLY = 39 * 10^12


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 sub_fd4b5b66;
uint256 sub_2317862e;

function totalSupply() {
    return totalSupply
}

function sub_2317862e(?) {
    return sub_2317862e
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_fd4b5b66(?) {
    return sub_fd4b5b66
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function send(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if msg.value >= 5000 * 10^18:
        if msg.value:
            require msg.value
            require 105 * msg.value / msg.value == 105
        if block.timestamp < 1512714400:
            require block.timestamp >= 421116 * 3600
            require block.timestamp <= 422172 * 3600
            if block.timestamp >= 421284 * 3600:
                if 105 * msg.value / 100 / 3448275862:
                    require 105 * msg.value / 100 / 3448275862
                    require 100 * 105 * msg.value / 100 / 3448275862 / 105 * msg.value / 100 / 3448275862 == 100
                require 100 * 105 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                sub_2317862e -= 100 * 105 * msg.value / 100 / 3448275862 / 100
                require msg.sender
                require 100 * 105 * msg.value / 100 / 3448275862 / 100 > 0
                require 100 * 105 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= 100 * 105 * msg.value / 100 / 3448275862 / 100
                require (100 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (100 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                emit Transfer((100 * 105 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
            else:
                if 105 * msg.value / 100 / 3448275862:
                    require 105 * msg.value / 100 / 3448275862
                    require 110 * 105 * msg.value / 100 / 3448275862 / 105 * msg.value / 100 / 3448275862 == 110
                require 110 * 105 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                sub_2317862e -= 110 * 105 * msg.value / 100 / 3448275862 / 100
                require msg.sender
                require 110 * 105 * msg.value / 100 / 3448275862 / 100 > 0
                require 110 * 105 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= 110 * 105 * msg.value / 100 / 3448275862 / 100
                require (110 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (110 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                emit Transfer((110 * 105 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
        else:
            if block.timestamp <= 420708 * 3600:
                if block.timestamp < 420324 * 3600:
                    if 105 * msg.value / 100 / 3448275862:
                        require 105 * msg.value / 100 / 3448275862
                        require 130 * 105 * msg.value / 100 / 3448275862 / 105 * msg.value / 100 / 3448275862 == 130
                    require 130 * 105 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                    sub_fd4b5b66 -= 130 * 105 * msg.value / 100 / 3448275862 / 100
                    require msg.sender
                    require 130 * 105 * msg.value / 100 / 3448275862 / 100 > 0
                    require 130 * 105 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= 130 * 105 * msg.value / 100 / 3448275862 / 100
                    require (130 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (130 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                    emit Transfer((130 * 105 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                else:
                    if block.timestamp < 420468 * 3600:
                        if 105 * msg.value / 100 / 3448275862:
                            require 105 * msg.value / 100 / 3448275862
                            require 125 * 105 * msg.value / 100 / 3448275862 / 105 * msg.value / 100 / 3448275862 == 125
                        require 125 * 105 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                        sub_fd4b5b66 -= 125 * 105 * msg.value / 100 / 3448275862 / 100
                        require msg.sender
                        require 125 * 105 * msg.value / 100 / 3448275862 / 100 > 0
                        require 125 * 105 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 125 * 105 * msg.value / 100 / 3448275862 / 100
                        require (125 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = (125 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                        emit Transfer((125 * 105 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                    else:
                        if block.timestamp >= 420636 * 3600:
                            if 105 * msg.value / 100 / 3448275862:
                                require 105 * msg.value / 100 / 3448275862
                                require 115 * 105 * msg.value / 100 / 3448275862 / 105 * msg.value / 100 / 3448275862 == 115
                            require 115 * 105 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                            sub_fd4b5b66 -= 115 * 105 * msg.value / 100 / 3448275862 / 100
                            require msg.sender
                            require 115 * 105 * msg.value / 100 / 3448275862 / 100 > 0
                            require 115 * 105 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 115 * 105 * msg.value / 100 / 3448275862 / 100
                            require (115 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (115 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                            emit Transfer((115 * 105 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                        else:
                            if 105 * msg.value / 100 / 3448275862:
                                require 105 * msg.value / 100 / 3448275862
                                require 120 * 105 * msg.value / 100 / 3448275862 / 105 * msg.value / 100 / 3448275862 == 120
                            require 120 * 105 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                            sub_fd4b5b66 -= 120 * 105 * msg.value / 100 / 3448275862 / 100
                            require msg.sender
                            require 120 * 105 * msg.value / 100 / 3448275862 / 100 > 0
                            require 120 * 105 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 120 * 105 * msg.value / 100 / 3448275862 / 100
                            require (120 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (120 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                            emit Transfer((120 * 105 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
            else:
                require block.timestamp >= 421116 * 3600
                require block.timestamp <= 422172 * 3600
                if block.timestamp >= 421284 * 3600:
                    if 105 * msg.value / 100 / 3448275862:
                        require 105 * msg.value / 100 / 3448275862
                        require 100 * 105 * msg.value / 100 / 3448275862 / 105 * msg.value / 100 / 3448275862 == 100
                    require 100 * 105 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                    sub_2317862e -= 100 * 105 * msg.value / 100 / 3448275862 / 100
                    require msg.sender
                    require 100 * 105 * msg.value / 100 / 3448275862 / 100 > 0
                    require 100 * 105 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= 100 * 105 * msg.value / 100 / 3448275862 / 100
                    require (100 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (100 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                    emit Transfer((100 * 105 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                else:
                    if 105 * msg.value / 100 / 3448275862:
                        require 105 * msg.value / 100 / 3448275862
                        require 110 * 105 * msg.value / 100 / 3448275862 / 105 * msg.value / 100 / 3448275862 == 110
                    require 110 * 105 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                    sub_2317862e -= 110 * 105 * msg.value / 100 / 3448275862 / 100
                    require msg.sender
                    require 110 * 105 * msg.value / 100 / 3448275862 / 100 > 0
                    require 110 * 105 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= 110 * 105 * msg.value / 100 / 3448275862 / 100
                    require (110 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (110 * 105 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                    emit Transfer((110 * 105 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
    else:
        if msg.value >= 3000 * 10^18:
            if msg.value:
                require msg.value
                require 104 * msg.value / msg.value == 104
            if block.timestamp < 1512714400:
                require block.timestamp >= 421116 * 3600
                require block.timestamp <= 422172 * 3600
                if block.timestamp >= 421284 * 3600:
                    if 104 * msg.value / 100 / 3448275862:
                        require 104 * msg.value / 100 / 3448275862
                        require 100 * 104 * msg.value / 100 / 3448275862 / 104 * msg.value / 100 / 3448275862 == 100
                    require 100 * 104 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                    sub_2317862e -= 100 * 104 * msg.value / 100 / 3448275862 / 100
                    require msg.sender
                    require 100 * 104 * msg.value / 100 / 3448275862 / 100 > 0
                    require 100 * 104 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= 100 * 104 * msg.value / 100 / 3448275862 / 100
                    require (100 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (100 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                    emit Transfer((100 * 104 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                else:
                    if 104 * msg.value / 100 / 3448275862:
                        require 104 * msg.value / 100 / 3448275862
                        require 110 * 104 * msg.value / 100 / 3448275862 / 104 * msg.value / 100 / 3448275862 == 110
                    require 110 * 104 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                    sub_2317862e -= 110 * 104 * msg.value / 100 / 3448275862 / 100
                    require msg.sender
                    require 110 * 104 * msg.value / 100 / 3448275862 / 100 > 0
                    require 110 * 104 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= 110 * 104 * msg.value / 100 / 3448275862 / 100
                    require (110 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (110 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                    emit Transfer((110 * 104 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
            else:
                if block.timestamp <= 420708 * 3600:
                    if block.timestamp < 420324 * 3600:
                        if 104 * msg.value / 100 / 3448275862:
                            require 104 * msg.value / 100 / 3448275862
                            require 130 * 104 * msg.value / 100 / 3448275862 / 104 * msg.value / 100 / 3448275862 == 130
                        require 130 * 104 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                        sub_fd4b5b66 -= 130 * 104 * msg.value / 100 / 3448275862 / 100
                        require msg.sender
                        require 130 * 104 * msg.value / 100 / 3448275862 / 100 > 0
                        require 130 * 104 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 130 * 104 * msg.value / 100 / 3448275862 / 100
                        require (130 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = (130 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                        emit Transfer((130 * 104 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                    else:
                        if block.timestamp < 420468 * 3600:
                            if 104 * msg.value / 100 / 3448275862:
                                require 104 * msg.value / 100 / 3448275862
                                require 125 * 104 * msg.value / 100 / 3448275862 / 104 * msg.value / 100 / 3448275862 == 125
                            require 125 * 104 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                            sub_fd4b5b66 -= 125 * 104 * msg.value / 100 / 3448275862 / 100
                            require msg.sender
                            require 125 * 104 * msg.value / 100 / 3448275862 / 100 > 0
                            require 125 * 104 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 125 * 104 * msg.value / 100 / 3448275862 / 100
                            require (125 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (125 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                            emit Transfer((125 * 104 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                        else:
                            if block.timestamp >= 420636 * 3600:
                                if 104 * msg.value / 100 / 3448275862:
                                    require 104 * msg.value / 100 / 3448275862
                                    require 115 * 104 * msg.value / 100 / 3448275862 / 104 * msg.value / 100 / 3448275862 == 115
                                require 115 * 104 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                sub_fd4b5b66 -= 115 * 104 * msg.value / 100 / 3448275862 / 100
                                require msg.sender
                                require 115 * 104 * msg.value / 100 / 3448275862 / 100 > 0
                                require 115 * 104 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 115 * 104 * msg.value / 100 / 3448275862 / 100
                                require (115 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (115 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                emit Transfer((115 * 104 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                            else:
                                if 104 * msg.value / 100 / 3448275862:
                                    require 104 * msg.value / 100 / 3448275862
                                    require 120 * 104 * msg.value / 100 / 3448275862 / 104 * msg.value / 100 / 3448275862 == 120
                                require 120 * 104 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                sub_fd4b5b66 -= 120 * 104 * msg.value / 100 / 3448275862 / 100
                                require msg.sender
                                require 120 * 104 * msg.value / 100 / 3448275862 / 100 > 0
                                require 120 * 104 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 120 * 104 * msg.value / 100 / 3448275862 / 100
                                require (120 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (120 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                emit Transfer((120 * 104 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                else:
                    require block.timestamp >= 421116 * 3600
                    require block.timestamp <= 422172 * 3600
                    if block.timestamp >= 421284 * 3600:
                        if 104 * msg.value / 100 / 3448275862:
                            require 104 * msg.value / 100 / 3448275862
                            require 100 * 104 * msg.value / 100 / 3448275862 / 104 * msg.value / 100 / 3448275862 == 100
                        require 100 * 104 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                        sub_2317862e -= 100 * 104 * msg.value / 100 / 3448275862 / 100
                        require msg.sender
                        require 100 * 104 * msg.value / 100 / 3448275862 / 100 > 0
                        require 100 * 104 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 100 * 104 * msg.value / 100 / 3448275862 / 100
                        require (100 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = (100 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                        emit Transfer((100 * 104 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                    else:
                        if 104 * msg.value / 100 / 3448275862:
                            require 104 * msg.value / 100 / 3448275862
                            require 110 * 104 * msg.value / 100 / 3448275862 / 104 * msg.value / 100 / 3448275862 == 110
                        require 110 * 104 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                        sub_2317862e -= 110 * 104 * msg.value / 100 / 3448275862 / 100
                        require msg.sender
                        require 110 * 104 * msg.value / 100 / 3448275862 / 100 > 0
                        require 110 * 104 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 110 * 104 * msg.value / 100 / 3448275862 / 100
                        require (110 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = (110 * 104 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                        emit Transfer((110 * 104 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
        else:
            if msg.value >= 1000 * 10^18:
                if msg.value:
                    require msg.value
                    require 103 * msg.value / msg.value == 103
                if block.timestamp < 1512714400:
                    require block.timestamp >= 421116 * 3600
                    require block.timestamp <= 422172 * 3600
                    if block.timestamp >= 421284 * 3600:
                        if 103 * msg.value / 100 / 3448275862:
                            require 103 * msg.value / 100 / 3448275862
                            require 100 * 103 * msg.value / 100 / 3448275862 / 103 * msg.value / 100 / 3448275862 == 100
                        require 100 * 103 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                        sub_2317862e -= 100 * 103 * msg.value / 100 / 3448275862 / 100
                        require msg.sender
                        require 100 * 103 * msg.value / 100 / 3448275862 / 100 > 0
                        require 100 * 103 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 100 * 103 * msg.value / 100 / 3448275862 / 100
                        require (100 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = (100 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                        emit Transfer((100 * 103 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                    else:
                        if 103 * msg.value / 100 / 3448275862:
                            require 103 * msg.value / 100 / 3448275862
                            require 110 * 103 * msg.value / 100 / 3448275862 / 103 * msg.value / 100 / 3448275862 == 110
                        require 110 * 103 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                        sub_2317862e -= 110 * 103 * msg.value / 100 / 3448275862 / 100
                        require msg.sender
                        require 110 * 103 * msg.value / 100 / 3448275862 / 100 > 0
                        require 110 * 103 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 110 * 103 * msg.value / 100 / 3448275862 / 100
                        require (110 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = (110 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                        emit Transfer((110 * 103 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                else:
                    if block.timestamp <= 420708 * 3600:
                        if block.timestamp < 420324 * 3600:
                            if 103 * msg.value / 100 / 3448275862:
                                require 103 * msg.value / 100 / 3448275862
                                require 130 * 103 * msg.value / 100 / 3448275862 / 103 * msg.value / 100 / 3448275862 == 130
                            require 130 * 103 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                            sub_fd4b5b66 -= 130 * 103 * msg.value / 100 / 3448275862 / 100
                            require msg.sender
                            require 130 * 103 * msg.value / 100 / 3448275862 / 100 > 0
                            require 130 * 103 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 130 * 103 * msg.value / 100 / 3448275862 / 100
                            require (130 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (130 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                            emit Transfer((130 * 103 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                        else:
                            if block.timestamp < 420468 * 3600:
                                if 103 * msg.value / 100 / 3448275862:
                                    require 103 * msg.value / 100 / 3448275862
                                    require 125 * 103 * msg.value / 100 / 3448275862 / 103 * msg.value / 100 / 3448275862 == 125
                                require 125 * 103 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                sub_fd4b5b66 -= 125 * 103 * msg.value / 100 / 3448275862 / 100
                                require msg.sender
                                require 125 * 103 * msg.value / 100 / 3448275862 / 100 > 0
                                require 125 * 103 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 125 * 103 * msg.value / 100 / 3448275862 / 100
                                require (125 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (125 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                emit Transfer((125 * 103 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                            else:
                                if block.timestamp >= 420636 * 3600:
                                    if 103 * msg.value / 100 / 3448275862:
                                        require 103 * msg.value / 100 / 3448275862
                                        require 115 * 103 * msg.value / 100 / 3448275862 / 103 * msg.value / 100 / 3448275862 == 115
                                    require 115 * 103 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                    sub_fd4b5b66 -= 115 * 103 * msg.value / 100 / 3448275862 / 100
                                    require msg.sender
                                    require 115 * 103 * msg.value / 100 / 3448275862 / 100 > 0
                                    require 115 * 103 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 115 * 103 * msg.value / 100 / 3448275862 / 100
                                    require (115 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (115 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                    emit Transfer((115 * 103 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                                else:
                                    if 103 * msg.value / 100 / 3448275862:
                                        require 103 * msg.value / 100 / 3448275862
                                        require 120 * 103 * msg.value / 100 / 3448275862 / 103 * msg.value / 100 / 3448275862 == 120
                                    require 120 * 103 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                    sub_fd4b5b66 -= 120 * 103 * msg.value / 100 / 3448275862 / 100
                                    require msg.sender
                                    require 120 * 103 * msg.value / 100 / 3448275862 / 100 > 0
                                    require 120 * 103 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 120 * 103 * msg.value / 100 / 3448275862 / 100
                                    require (120 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (120 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                    emit Transfer((120 * 103 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                    else:
                        require block.timestamp >= 421116 * 3600
                        require block.timestamp <= 422172 * 3600
                        if block.timestamp >= 421284 * 3600:
                            if 103 * msg.value / 100 / 3448275862:
                                require 103 * msg.value / 100 / 3448275862
                                require 100 * 103 * msg.value / 100 / 3448275862 / 103 * msg.value / 100 / 3448275862 == 100
                            require 100 * 103 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                            sub_2317862e -= 100 * 103 * msg.value / 100 / 3448275862 / 100
                            require msg.sender
                            require 100 * 103 * msg.value / 100 / 3448275862 / 100 > 0
                            require 100 * 103 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 100 * 103 * msg.value / 100 / 3448275862 / 100
                            require (100 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (100 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                            emit Transfer((100 * 103 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                        else:
                            if 103 * msg.value / 100 / 3448275862:
                                require 103 * msg.value / 100 / 3448275862
                                require 110 * 103 * msg.value / 100 / 3448275862 / 103 * msg.value / 100 / 3448275862 == 110
                            require 110 * 103 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                            sub_2317862e -= 110 * 103 * msg.value / 100 / 3448275862 / 100
                            require msg.sender
                            require 110 * 103 * msg.value / 100 / 3448275862 / 100 > 0
                            require 110 * 103 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 110 * 103 * msg.value / 100 / 3448275862 / 100
                            require (110 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (110 * 103 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                            emit Transfer((110 * 103 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
            else:
                if msg.value >= 100 * 10^18:
                    if msg.value:
                        require msg.value
                        require 102 * msg.value / msg.value == 102
                    if block.timestamp < 1512714400:
                        require block.timestamp >= 421116 * 3600
                        require block.timestamp <= 422172 * 3600
                        if block.timestamp >= 421284 * 3600:
                            if 102 * msg.value / 100 / 3448275862:
                                require 102 * msg.value / 100 / 3448275862
                                require 100 * 102 * msg.value / 100 / 3448275862 / 102 * msg.value / 100 / 3448275862 == 100
                            require 100 * 102 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                            sub_2317862e -= 100 * 102 * msg.value / 100 / 3448275862 / 100
                            require msg.sender
                            require 100 * 102 * msg.value / 100 / 3448275862 / 100 > 0
                            require 100 * 102 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 100 * 102 * msg.value / 100 / 3448275862 / 100
                            require (100 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (100 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                            emit Transfer((100 * 102 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                        else:
                            if 102 * msg.value / 100 / 3448275862:
                                require 102 * msg.value / 100 / 3448275862
                                require 110 * 102 * msg.value / 100 / 3448275862 / 102 * msg.value / 100 / 3448275862 == 110
                            require 110 * 102 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                            sub_2317862e -= 110 * 102 * msg.value / 100 / 3448275862 / 100
                            require msg.sender
                            require 110 * 102 * msg.value / 100 / 3448275862 / 100 > 0
                            require 110 * 102 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 110 * 102 * msg.value / 100 / 3448275862 / 100
                            require (110 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (110 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                            emit Transfer((110 * 102 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                    else:
                        if block.timestamp <= 420708 * 3600:
                            if block.timestamp < 420324 * 3600:
                                if 102 * msg.value / 100 / 3448275862:
                                    require 102 * msg.value / 100 / 3448275862
                                    require 130 * 102 * msg.value / 100 / 3448275862 / 102 * msg.value / 100 / 3448275862 == 130
                                require 130 * 102 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                sub_fd4b5b66 -= 130 * 102 * msg.value / 100 / 3448275862 / 100
                                require msg.sender
                                require 130 * 102 * msg.value / 100 / 3448275862 / 100 > 0
                                require 130 * 102 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 130 * 102 * msg.value / 100 / 3448275862 / 100
                                require (130 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (130 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                emit Transfer((130 * 102 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                            else:
                                if block.timestamp < 420468 * 3600:
                                    if 102 * msg.value / 100 / 3448275862:
                                        require 102 * msg.value / 100 / 3448275862
                                        require 125 * 102 * msg.value / 100 / 3448275862 / 102 * msg.value / 100 / 3448275862 == 125
                                    require 125 * 102 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                    sub_fd4b5b66 -= 125 * 102 * msg.value / 100 / 3448275862 / 100
                                    require msg.sender
                                    require 125 * 102 * msg.value / 100 / 3448275862 / 100 > 0
                                    require 125 * 102 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 125 * 102 * msg.value / 100 / 3448275862 / 100
                                    require (125 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (125 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                    emit Transfer((125 * 102 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                                else:
                                    if block.timestamp >= 420636 * 3600:
                                        if 102 * msg.value / 100 / 3448275862:
                                            require 102 * msg.value / 100 / 3448275862
                                            require 115 * 102 * msg.value / 100 / 3448275862 / 102 * msg.value / 100 / 3448275862 == 115
                                        require 115 * 102 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                        sub_fd4b5b66 -= 115 * 102 * msg.value / 100 / 3448275862 / 100
                                        require msg.sender
                                        require 115 * 102 * msg.value / 100 / 3448275862 / 100 > 0
                                        require 115 * 102 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                        balanceOf[address(this.address)] -= 115 * 102 * msg.value / 100 / 3448275862 / 100
                                        require (115 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[address(msg.sender)] = (115 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                        emit Transfer((115 * 102 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                                    else:
                                        if 102 * msg.value / 100 / 3448275862:
                                            require 102 * msg.value / 100 / 3448275862
                                            require 120 * 102 * msg.value / 100 / 3448275862 / 102 * msg.value / 100 / 3448275862 == 120
                                        require 120 * 102 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                        sub_fd4b5b66 -= 120 * 102 * msg.value / 100 / 3448275862 / 100
                                        require msg.sender
                                        require 120 * 102 * msg.value / 100 / 3448275862 / 100 > 0
                                        require 120 * 102 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                        balanceOf[address(this.address)] -= 120 * 102 * msg.value / 100 / 3448275862 / 100
                                        require (120 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[address(msg.sender)] = (120 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                        emit Transfer((120 * 102 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                        else:
                            require block.timestamp >= 421116 * 3600
                            require block.timestamp <= 422172 * 3600
                            if block.timestamp >= 421284 * 3600:
                                if 102 * msg.value / 100 / 3448275862:
                                    require 102 * msg.value / 100 / 3448275862
                                    require 100 * 102 * msg.value / 100 / 3448275862 / 102 * msg.value / 100 / 3448275862 == 100
                                require 100 * 102 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                                sub_2317862e -= 100 * 102 * msg.value / 100 / 3448275862 / 100
                                require msg.sender
                                require 100 * 102 * msg.value / 100 / 3448275862 / 100 > 0
                                require 100 * 102 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 100 * 102 * msg.value / 100 / 3448275862 / 100
                                require (100 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (100 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                emit Transfer((100 * 102 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                            else:
                                if 102 * msg.value / 100 / 3448275862:
                                    require 102 * msg.value / 100 / 3448275862
                                    require 110 * 102 * msg.value / 100 / 3448275862 / 102 * msg.value / 100 / 3448275862 == 110
                                require 110 * 102 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                                sub_2317862e -= 110 * 102 * msg.value / 100 / 3448275862 / 100
                                require msg.sender
                                require 110 * 102 * msg.value / 100 / 3448275862 / 100 > 0
                                require 110 * 102 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 110 * 102 * msg.value / 100 / 3448275862 / 100
                                require (110 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (110 * 102 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                emit Transfer((110 * 102 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                else:
                    if msg.value < 3 * 10^18:
                        if block.timestamp < 1512714400:
                            require block.timestamp >= 421116 * 3600
                            require block.timestamp <= 422172 * 3600
                            if block.timestamp >= 421284 * 3600:
                                if msg.value / 3448275862:
                                    require msg.value / 3448275862
                                    require 100 * msg.value / 3448275862 / msg.value / 3448275862 == 100
                                require 100 * msg.value / 3448275862 / 100 <= sub_2317862e
                                sub_2317862e -= 100 * msg.value / 3448275862 / 100
                                require msg.sender
                                require 100 * msg.value / 3448275862 / 100 > 0
                                require 100 * msg.value / 3448275862 / 100 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 100 * msg.value / 3448275862 / 100
                                require (100 * msg.value / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (100 * msg.value / 3448275862 / 100) + balanceOf[msg.sender]
                                emit Transfer((100 * msg.value / 3448275862 / 100), this.address, msg.sender);
                            else:
                                if msg.value / 3448275862:
                                    require msg.value / 3448275862
                                    require 110 * msg.value / 3448275862 / msg.value / 3448275862 == 110
                                require 110 * msg.value / 3448275862 / 100 <= sub_2317862e
                                sub_2317862e -= 110 * msg.value / 3448275862 / 100
                                require msg.sender
                                require 110 * msg.value / 3448275862 / 100 > 0
                                require 110 * msg.value / 3448275862 / 100 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 110 * msg.value / 3448275862 / 100
                                require (110 * msg.value / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (110 * msg.value / 3448275862 / 100) + balanceOf[msg.sender]
                                emit Transfer((110 * msg.value / 3448275862 / 100), this.address, msg.sender);
                        else:
                            if block.timestamp <= 420708 * 3600:
                                if block.timestamp < 420324 * 3600:
                                    if msg.value / 3448275862:
                                        require msg.value / 3448275862
                                        require 130 * msg.value / 3448275862 / msg.value / 3448275862 == 130
                                    require 130 * msg.value / 3448275862 / 100 <= sub_fd4b5b66
                                    sub_fd4b5b66 -= 130 * msg.value / 3448275862 / 100
                                    require msg.sender
                                    require 130 * msg.value / 3448275862 / 100 > 0
                                    require 130 * msg.value / 3448275862 / 100 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 130 * msg.value / 3448275862 / 100
                                    require (130 * msg.value / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (130 * msg.value / 3448275862 / 100) + balanceOf[msg.sender]
                                    emit Transfer((130 * msg.value / 3448275862 / 100), this.address, msg.sender);
                                else:
                                    if block.timestamp < 420468 * 3600:
                                        if msg.value / 3448275862:
                                            require msg.value / 3448275862
                                            require 125 * msg.value / 3448275862 / msg.value / 3448275862 == 125
                                        require 125 * msg.value / 3448275862 / 100 <= sub_fd4b5b66
                                        sub_fd4b5b66 -= 125 * msg.value / 3448275862 / 100
                                        require msg.sender
                                        require 125 * msg.value / 3448275862 / 100 > 0
                                        require 125 * msg.value / 3448275862 / 100 <= balanceOf[address(this.address)]
                                        balanceOf[address(this.address)] -= 125 * msg.value / 3448275862 / 100
                                        require (125 * msg.value / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[address(msg.sender)] = (125 * msg.value / 3448275862 / 100) + balanceOf[msg.sender]
                                        emit Transfer((125 * msg.value / 3448275862 / 100), this.address, msg.sender);
                                    else:
                                        if block.timestamp >= 420636 * 3600:
                                            if msg.value / 3448275862:
                                                require msg.value / 3448275862
                                                require 115 * msg.value / 3448275862 / msg.value / 3448275862 == 115
                                            require 115 * msg.value / 3448275862 / 100 <= sub_fd4b5b66
                                            sub_fd4b5b66 -= 115 * msg.value / 3448275862 / 100
                                            require msg.sender
                                            require 115 * msg.value / 3448275862 / 100 > 0
                                            require 115 * msg.value / 3448275862 / 100 <= balanceOf[address(this.address)]
                                            balanceOf[address(this.address)] -= 115 * msg.value / 3448275862 / 100
                                            require (115 * msg.value / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                            balanceOf[address(msg.sender)] = (115 * msg.value / 3448275862 / 100) + balanceOf[msg.sender]
                                            emit Transfer((115 * msg.value / 3448275862 / 100), this.address, msg.sender);
                                        else:
                                            if msg.value / 3448275862:
                                                require msg.value / 3448275862
                                                require 120 * msg.value / 3448275862 / msg.value / 3448275862 == 120
                                            require 120 * msg.value / 3448275862 / 100 <= sub_fd4b5b66
                                            sub_fd4b5b66 -= 120 * msg.value / 3448275862 / 100
                                            require msg.sender
                                            require 120 * msg.value / 3448275862 / 100 > 0
                                            require 120 * msg.value / 3448275862 / 100 <= balanceOf[address(this.address)]
                                            balanceOf[address(this.address)] -= 120 * msg.value / 3448275862 / 100
                                            require (120 * msg.value / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                            balanceOf[address(msg.sender)] = (120 * msg.value / 3448275862 / 100) + balanceOf[msg.sender]
                                            emit Transfer((120 * msg.value / 3448275862 / 100), this.address, msg.sender);
                            else:
                                require block.timestamp >= 421116 * 3600
                                require block.timestamp <= 422172 * 3600
                                if block.timestamp >= 421284 * 3600:
                                    if msg.value / 3448275862:
                                        require msg.value / 3448275862
                                        require 100 * msg.value / 3448275862 / msg.value / 3448275862 == 100
                                    require 100 * msg.value / 3448275862 / 100 <= sub_2317862e
                                    sub_2317862e -= 100 * msg.value / 3448275862 / 100
                                    require msg.sender
                                    require 100 * msg.value / 3448275862 / 100 > 0
                                    require 100 * msg.value / 3448275862 / 100 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 100 * msg.value / 3448275862 / 100
                                    require (100 * msg.value / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (100 * msg.value / 3448275862 / 100) + balanceOf[msg.sender]
                                    emit Transfer((100 * msg.value / 3448275862 / 100), this.address, msg.sender);
                                else:
                                    if msg.value / 3448275862:
                                        require msg.value / 3448275862
                                        require 110 * msg.value / 3448275862 / msg.value / 3448275862 == 110
                                    require 110 * msg.value / 3448275862 / 100 <= sub_2317862e
                                    sub_2317862e -= 110 * msg.value / 3448275862 / 100
                                    require msg.sender
                                    require 110 * msg.value / 3448275862 / 100 > 0
                                    require 110 * msg.value / 3448275862 / 100 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 110 * msg.value / 3448275862 / 100
                                    require (110 * msg.value / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (110 * msg.value / 3448275862 / 100) + balanceOf[msg.sender]
                                    emit Transfer((110 * msg.value / 3448275862 / 100), this.address, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 101 * msg.value / msg.value == 101
                        if block.timestamp < 1512714400:
                            require block.timestamp >= 421116 * 3600
                            require block.timestamp <= 422172 * 3600
                            if block.timestamp >= 421284 * 3600:
                                if 101 * msg.value / 100 / 3448275862:
                                    require 101 * msg.value / 100 / 3448275862
                                    require 100 * 101 * msg.value / 100 / 3448275862 / 101 * msg.value / 100 / 3448275862 == 100
                                require 100 * 101 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                                sub_2317862e -= 100 * 101 * msg.value / 100 / 3448275862 / 100
                                require msg.sender
                                require 100 * 101 * msg.value / 100 / 3448275862 / 100 > 0
                                require 100 * 101 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 100 * 101 * msg.value / 100 / 3448275862 / 100
                                require (100 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (100 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                emit Transfer((100 * 101 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                            else:
                                if 101 * msg.value / 100 / 3448275862:
                                    require 101 * msg.value / 100 / 3448275862
                                    require 110 * 101 * msg.value / 100 / 3448275862 / 101 * msg.value / 100 / 3448275862 == 110
                                require 110 * 101 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                                sub_2317862e -= 110 * 101 * msg.value / 100 / 3448275862 / 100
                                require msg.sender
                                require 110 * 101 * msg.value / 100 / 3448275862 / 100 > 0
                                require 110 * 101 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 110 * 101 * msg.value / 100 / 3448275862 / 100
                                require (110 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (110 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                emit Transfer((110 * 101 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                        else:
                            if block.timestamp <= 420708 * 3600:
                                if block.timestamp < 420324 * 3600:
                                    if 101 * msg.value / 100 / 3448275862:
                                        require 101 * msg.value / 100 / 3448275862
                                        require 130 * 101 * msg.value / 100 / 3448275862 / 101 * msg.value / 100 / 3448275862 == 130
                                    require 130 * 101 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                    sub_fd4b5b66 -= 130 * 101 * msg.value / 100 / 3448275862 / 100
                                    require msg.sender
                                    require 130 * 101 * msg.value / 100 / 3448275862 / 100 > 0
                                    require 130 * 101 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 130 * 101 * msg.value / 100 / 3448275862 / 100
                                    require (130 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (130 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                    emit Transfer((130 * 101 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                                else:
                                    if block.timestamp < 420468 * 3600:
                                        if 101 * msg.value / 100 / 3448275862:
                                            require 101 * msg.value / 100 / 3448275862
                                            require 125 * 101 * msg.value / 100 / 3448275862 / 101 * msg.value / 100 / 3448275862 == 125
                                        require 125 * 101 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                        sub_fd4b5b66 -= 125 * 101 * msg.value / 100 / 3448275862 / 100
                                        require msg.sender
                                        require 125 * 101 * msg.value / 100 / 3448275862 / 100 > 0
                                        require 125 * 101 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                        balanceOf[address(this.address)] -= 125 * 101 * msg.value / 100 / 3448275862 / 100
                                        require (125 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[address(msg.sender)] = (125 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                        emit Transfer((125 * 101 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                                    else:
                                        if block.timestamp >= 420636 * 3600:
                                            if 101 * msg.value / 100 / 3448275862:
                                                require 101 * msg.value / 100 / 3448275862
                                                require 115 * 101 * msg.value / 100 / 3448275862 / 101 * msg.value / 100 / 3448275862 == 115
                                            require 115 * 101 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                            sub_fd4b5b66 -= 115 * 101 * msg.value / 100 / 3448275862 / 100
                                            require msg.sender
                                            require 115 * 101 * msg.value / 100 / 3448275862 / 100 > 0
                                            require 115 * 101 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                            balanceOf[address(this.address)] -= 115 * 101 * msg.value / 100 / 3448275862 / 100
                                            require (115 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                            balanceOf[address(msg.sender)] = (115 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                            emit Transfer((115 * 101 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                                        else:
                                            if 101 * msg.value / 100 / 3448275862:
                                                require 101 * msg.value / 100 / 3448275862
                                                require 120 * 101 * msg.value / 100 / 3448275862 / 101 * msg.value / 100 / 3448275862 == 120
                                            require 120 * 101 * msg.value / 100 / 3448275862 / 100 <= sub_fd4b5b66
                                            sub_fd4b5b66 -= 120 * 101 * msg.value / 100 / 3448275862 / 100
                                            require msg.sender
                                            require 120 * 101 * msg.value / 100 / 3448275862 / 100 > 0
                                            require 120 * 101 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                            balanceOf[address(this.address)] -= 120 * 101 * msg.value / 100 / 3448275862 / 100
                                            require (120 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                            balanceOf[address(msg.sender)] = (120 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                            emit Transfer((120 * 101 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                            else:
                                require block.timestamp >= 421116 * 3600
                                require block.timestamp <= 422172 * 3600
                                if block.timestamp >= 421284 * 3600:
                                    if 101 * msg.value / 100 / 3448275862:
                                        require 101 * msg.value / 100 / 3448275862
                                        require 100 * 101 * msg.value / 100 / 3448275862 / 101 * msg.value / 100 / 3448275862 == 100
                                    require 100 * 101 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                                    sub_2317862e -= 100 * 101 * msg.value / 100 / 3448275862 / 100
                                    require msg.sender
                                    require 100 * 101 * msg.value / 100 / 3448275862 / 100 > 0
                                    require 100 * 101 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 100 * 101 * msg.value / 100 / 3448275862 / 100
                                    require (100 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (100 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                    emit Transfer((100 * 101 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
                                else:
                                    if 101 * msg.value / 100 / 3448275862:
                                        require 101 * msg.value / 100 / 3448275862
                                        require 110 * 101 * msg.value / 100 / 3448275862 / 101 * msg.value / 100 / 3448275862 == 110
                                    require 110 * 101 * msg.value / 100 / 3448275862 / 100 <= sub_2317862e
                                    sub_2317862e -= 110 * 101 * msg.value / 100 / 3448275862 / 100
                                    require msg.sender
                                    require 110 * 101 * msg.value / 100 / 3448275862 / 100 > 0
                                    require 110 * 101 * msg.value / 100 / 3448275862 / 100 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 110 * 101 * msg.value / 100 / 3448275862 / 100
                                    require (110 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (110 * 101 * msg.value / 100 / 3448275862 / 100) + balanceOf[msg.sender]
                                    emit Transfer((110 * 101 * msg.value / 100 / 3448275862 / 100), this.address, msg.sender);
}



}
