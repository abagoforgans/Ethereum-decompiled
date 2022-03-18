contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 526]




// =====================  Runtime code  =====================


uint256 sub_2ca880fa;
uint256 sub_19bdf84d;
uint256 sub_37753c8f;
uint256 sub_5d37cae1;
uint256 sub_ca800ca0;
uint256 sub_4ec17bbc;
uint256 sub_74df828d;

function sub_19bdf84d(?) payable {
    return sub_19bdf84d
}

function sub_2ca880fa(?) payable {
    return sub_2ca880fa
}

function sub_37753c8f(?) payable {
    return sub_37753c8f
}

function sub_4ec17bbc(?) payable {
    return sub_4ec17bbc
}

function sub_5d37cae1(?) payable {
    return sub_5d37cae1
}

function sub_74df828d(?) payable {
    return sub_74df828d
}

function sub_ca800ca0(?) payable {
    return sub_ca800ca0
}

function Refund() payable {
    call msg.sender with:
       value 9 * eth.balance(this.address) / 10 wei
         gas 0 wei
}

function _fallback() payable {
    sub_ca800ca0 = msg.value
    if msg.value <= 999999999999:
        if 123 * 10^15 == msg.value:
            call msg.sender with:
               value 9 * eth.balance(this.address) / 10 wei
                 gas 0 wei
    else:
        sub_2ca880fa++
        sub_19bdf84d = (sub_19bdf84d % block.timestamp) + (block.number * block.timestamp * block.difficulty) + 1
        sub_37753c8f = (10^18 / msg.value) + 10
        sub_5d37cae1 = (sub_19bdf84d % block.timestamp) + (block.number * block.timestamp * block.difficulty) + 1 % (10^18 / msg.value) + 10
        if 0 == (sub_19bdf84d % block.timestamp) + (block.number * block.timestamp * block.difficulty) + 1 % (10^18 / msg.value) + 10:
            sub_4ec17bbc += eth.balance(this.address) / 10
            call msg.sender with:
               value eth.balance(this.address) / 10 wei
                 gas 0 wei
            sub_74df828d += eth.balance(this.address) / 20
            call 0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae with:
               value eth.balance(this.address) / 20 wei
                 gas 0 wei
        if 123 * 10^15 == msg.value:
            call msg.sender with:
               value 9 * eth.balance(this.address) / 10 wei
                 gas 0 wei
}



}
