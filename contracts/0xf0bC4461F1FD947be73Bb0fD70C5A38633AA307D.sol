contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor13;
array of uint256 stor14;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    bool(stor14.length) = 0
    stor14.length.field_1 = 19
    stor14.length.field_8 = 'Created New Account' / 256
    idx = 0
    while stor14.length + 31 / 32 > idx:
        stor14[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13 = 1
    return code.data[431 len 5150]
}



// =====================  Runtime code  =====================


#
#  - sub_82c56ab6(?)
#
address stor0;
address owner;
address account;
array of uint256 sub_c5e57985;
array of uint256 sub_4e89f8b5;
array of uint256 phone;
array of uint256 email;
array of uint256 site;
array of uint256 accountOwner;
array of uint256 sub_95eec3c9;
array of uint256 industry;
array of uint256 sub_fc9ec2eb;
array of uint256 description;
uint256 sub_1e8b9d11;
array of uint256 sub_1d5f2493;

function industry() {
    return industry[0 len industry.length]
}

function sub_1d5f2493(?) {
    return sub_1d5f2493[0 len sub_1d5f2493.length]
}

function sub_1e8b9d11(?) {
    return sub_1e8b9d11
}

function sub_4e89f8b5(?) {
    return sub_4e89f8b5[0 len sub_4e89f8b5.length]
}

function account() {
    return account
}

function accountOwner() {
    return accountOwner[0 len accountOwner.length]
}

function description() {
    return description[0 len description.length]
}

function email() {
    return email[0 len email.length]
}

function owner() {
    return owner
}

function phone() {
    return phone[0 len phone.length]
}

function sub_95eec3c9(?) {
    return sub_95eec3c9[0 len sub_95eec3c9.length]
}

function sub_c5e57985(?) {
    return sub_c5e57985[0 len sub_c5e57985.length]
}

function site() {
    return site[0 len site.length]
}

function sub_fc9ec2eb(?) {
    return sub_fc9ec2eb[0 len sub_fc9ec2eb.length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    if msg.sender == stor0:
        if arg1:
            stor0 = arg1
}



}
