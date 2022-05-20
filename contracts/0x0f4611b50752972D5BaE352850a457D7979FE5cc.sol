contract main {




// =====================  Runtime code  =====================


uint256 currentHodlerId;
address currentHodlerAddress;
uint256 stor1;
array of address previousHodlers;
array of uint256 messages;
uint256 price;
mapping of uint256 balance;

function messages(uint256 arg1) {
    return messages[arg1][0 len messages[arg1].length]
}

function previousHodlers(uint256 arg1) {
    require arg1 < previousHodlers.length
    return previousHodlers[arg1]
}

function currentHodlerId() {
    return currentHodlerId
}

function currentHodler() {
    return address(currentHodlerAddress)
}

function price() {
    return price
}

function balance(address arg1) {
    return balance[arg1]
}

function _fallback() payable {
    revert
}

function withdraw() {
    balance[msg.sender] = 0
    call msg.sender with:
       value balance[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy(string arg1) payable {
    require msg.value >= price
    if msg.value > price:
        balance[msg.sender] = balance[msg.sender] + msg.value - price
    idx = 0
    while idx < previousHodlers.length:
        require previousHodlers.length
        require idx < previousHodlers.length
        mem[0] = previousHodlers[idx]
        mem[32] = 5
        balance[stor2[idx]] += 10 * price / 100 / previousHodlers.length
        idx = idx + 1
        continue 
    balance[address(stor1)] += 90 * price / 100
    price = 107 * price / 100
    previousHodlers.length++
    previousHodlers[previousHodlers.length] = address(currentHodlerAddress)
    messages.length++
    messages[messages.length][] = Array(len=arg1.length, data=arg1[all])
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    currentHodlerId = previousHodlers.length + 1
    emit Purchased(msg.sender, previousHodlers.length + 1);
    return 0
}



}
