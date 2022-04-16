contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender
    stor4 = 2 * 10^18
    require not msg.value
    stor1 = msg.sender
    stor2 = code.data[3051 len 20]
    stor3 = code.data[3083 len 20]
    return code.data[407 len 2632]
}



// =====================  Runtime code  =====================


const currentBalance = eth.balance(this.address)


address stor0;
address creatorAddress;
address ownerO;
address owner1;
uint256 etherLimit;
mapping of uint256 balances;
mapping of uint256 interestPaid;

function creator() {
    return creatorAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function interestPaid(address arg1) {
    return interestPaid[arg1]
}

function OwnerO() {
    return ownerO
}

function Owner1() {
    return owner1
}

function etherLimit() {
    return etherLimit
}

function initOwner(address arg1) {
    ownerO = arg1
}

function calculateInterest(address arg1, uint256 arg2) {
    return (balances[address(arg1)] * arg2 / 100)
}

function _fallback() payable {
    if msg.value >= etherLimit:
        balances[address(msg.sender)] += msg.value
}

function deposit(address arg1) payable {
    if msg.value >= 2:
        balances[address(arg1)] += msg.value
        emit Deposit(address(arg1), msg.value);
}

function payout(address arg1, uint256 arg2) {
    if msg.sender == creatorAddress:
        if balances[address(arg1)] > 0:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            emit PayInterest(address(arg1), arg2);
    else:
        if msg.sender == stor0:
            if balances[address(arg1)] > 0:
                call arg1 with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                emit PayInterest(address(arg1), arg2);
        else:
            if msg.sender == owner1:
                if balances[address(arg1)] > 0:
                    call arg1 with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    emit PayInterest(address(arg1), arg2);
}

function payInterest(address arg1, uint256 arg2) {
    if msg.sender == creatorAddress:
        interestPaid[address(arg1)] += balances[address(arg1)] * arg2 / 100
        if msg.sender == creatorAddress:
            if balances[address(arg1)] > 0:
                call arg1 with:
                   value balances[address(arg1)] * arg2 / 100 wei
                     gas 2300 * is_zero(value) wei
                emit PayInterest(address(arg1), balances[address(arg1)] * arg2 / 100);
        else:
            if msg.sender == stor0:
                if balances[address(arg1)] > 0:
                    call arg1 with:
                       value balances[address(arg1)] * arg2 / 100 wei
                         gas 2300 * is_zero(value) wei
                    emit PayInterest(address(arg1), balances[address(arg1)] * arg2 / 100);
            else:
                if msg.sender == owner1:
                    if balances[address(arg1)] > 0:
                        call arg1 with:
                           value balances[address(arg1)] * arg2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        emit PayInterest(address(arg1), balances[address(arg1)] * arg2 / 100);
    else:
        if msg.sender == stor0:
            interestPaid[address(arg1)] += balances[address(arg1)] * arg2 / 100
            if msg.sender == creatorAddress:
                if balances[address(arg1)] > 0:
                    call arg1 with:
                       value balances[address(arg1)] * arg2 / 100 wei
                         gas 2300 * is_zero(value) wei
                    emit PayInterest(address(arg1), balances[address(arg1)] * arg2 / 100);
            else:
                if msg.sender == stor0:
                    if balances[address(arg1)] > 0:
                        call arg1 with:
                           value balances[address(arg1)] * arg2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        emit PayInterest(address(arg1), balances[address(arg1)] * arg2 / 100);
                else:
                    if msg.sender == owner1:
                        if balances[address(arg1)] > 0:
                            call arg1 with:
                               value balances[address(arg1)] * arg2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            emit PayInterest(address(arg1), balances[address(arg1)] * arg2 / 100);
        else:
            if msg.sender == owner1:
                interestPaid[address(arg1)] += balances[address(arg1)] * arg2 / 100
                if msg.sender == creatorAddress:
                    if balances[address(arg1)] > 0:
                        call arg1 with:
                           value balances[address(arg1)] * arg2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        emit PayInterest(address(arg1), balances[address(arg1)] * arg2 / 100);
                else:
                    if msg.sender == stor0:
                        if balances[address(arg1)] > 0:
                            call arg1 with:
                               value balances[address(arg1)] * arg2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            emit PayInterest(address(arg1), balances[address(arg1)] * arg2 / 100);
                    else:
                        if msg.sender == owner1:
                            if balances[address(arg1)] > 0:
                                call arg1 with:
                                   value balances[address(arg1)] * arg2 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                emit PayInterest(address(arg1), balances[address(arg1)] * arg2 / 100);
}



}
