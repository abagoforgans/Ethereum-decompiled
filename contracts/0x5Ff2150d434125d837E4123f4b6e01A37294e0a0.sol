contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor3 = 10^18
    stor4 = 0
    return code.data[53 len 2403]
}



// =====================  Runtime code  =====================


mapping of struct sub_327c285e;
array of uint256 sub_8a3e6c1c;
mapping of address addressOfName;
uint256 fee;
uint256 numberOfAccounts;
address stor5;

function getNumberOfAccounts() payable {
    return numberOfAccounts
}

function sub_327c285e(?) payable {
    return sub_327c285e[address(arg1)][0 len sub_327c285e[address(arg1)].length].field_0
}

function sub_8a3e6c1c(?) payable {
    return sub_8a3e6c1c[arg1][0 len sub_8a3e6c1c[arg1].length]
}

function addressOfName(string arg1) payable {
    return address(addressOfName[arg1[all]])
}

function getFee() payable {
    return fee
}

function _fallback() payable {
  stop
}

function sub_4f2c0aec(?) payable {
    if msg.sender == stor5:
        fee = arg1
}

function sub_b08fec62(?) payable {
    if msg.sender == stor5:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function register(string arg1) payable {
    if msg.value < fee:
        return -1
    if address(addressOfName[arg1[all]]) != 0:
        return -2
    if Mask(255, 1, sub_327c285e[address(msg.sender)].field_0 and (256 * not sub_327c285e[address(msg.sender)].field_0) - 1):
        return -3
    if arg1.length >= 64:
        return -4
    sub_327c285e[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    uint256(addressOfName[arg1[all]]) = msg.sender or Mask(96, 160, uint256(addressOfName[arg1[all]]))
    sub_8a3e6c1c[stor4][] = Array(len=arg1.length, data=arg1[all])
    numberOfAccounts++
    return 0
}

function adminUnregister(string arg1) payable {
    if msg.sender == stor5:
        mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        sub_327c285e[address(stor2[arg1[all]])].field_0 = 0
        sub_327c285e[address(stor2[arg1[all]])].field_1 = 0
        sub_327c285e[address(stor2[arg1[all]])].field_8 = mem[ceil32(arg1.length) + 160 len 31]
        idx = 0
        while sub_327c285e[address(stor2[arg1[all]])].length + 31 / 32 > idx:
            sub_327c285e[address(stor2[arg1[all]])][idx].field_0 = 0
            idx = idx + 1
            continue 
        address(addressOfName[arg1[all]]) = 0
}

function unregister() payable {
    mem[160] = sub_327c285e[address(msg.sender)].field_0
    idx = 160
    s = 0
    while sub_327c285e[address(msg.sender)].length + 128 > idx:
        mem[idx + 32] = sub_327c285e[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    sub_327c285e[address(msg.sender)].field_0 = 0
    sub_327c285e[address(msg.sender)].field_1 = 0
    sub_327c285e[address(msg.sender)].field_8 = mem[ceil32(sub_327c285e[address(msg.sender)].length) + 192 len 31]
    idx = 0
    while sub_327c285e[address(msg.sender)].length + 31 / 32 > idx:
        sub_327c285e[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    address(addressOfName[mem[160 len stor0[address(msg.sender)].length]]) = 0
    return Array(len=sub_327c285e[address(msg.sender)].length, data=mem[160 len sub_327c285e[address(msg.sender)].length])
}



}
