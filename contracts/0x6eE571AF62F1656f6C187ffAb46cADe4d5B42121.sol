contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 company;

function owner() {
    return owner
}

function getCompany(bytes32 arg1) {
    return company[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function _deleteCompany(bytes32 arg1) {
    require msg.sender == owner
    company[arg1] = 0
    emit DeleteCompany(arg1);
}

function _createCompany(bytes32 arg1, bytes32 arg2) {
    require msg.sender == owner
    company[arg1] = arg2
    emit NewCompany(arg1, arg2);
}

function _updateCompany(bytes32 arg1, bytes32 arg2) {
    require msg.sender == owner
    company[arg1] = arg2
    emit ChangeCompany(arg1, arg2);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _createCompanies(bytes32[] arg1, bytes32[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _17 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        company[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _17
        emit NewCompany(mem[(32 * arg1.length) + (32 * arg2.length) + 160], _17);
        idx = idx + 1
        continue 
}

function _updateCompanies(bytes32[] arg1, bytes32[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _17 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        company[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _17
        emit ChangeCompany(mem[(32 * arg1.length) + (32 * arg2.length) + 160], _17);
        idx = idx + 1
        continue 
}



}
