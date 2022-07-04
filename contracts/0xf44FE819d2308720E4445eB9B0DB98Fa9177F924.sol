contract main {




// =====================  Runtime code  =====================


const ROLE_WHITELISTED = ''


address owner;
mapping of struct auditState;
address tokenAddress;
uint256 auditTimeoutInBlocks;
uint256 maxAssignedRequests;
mapping of uint256 minAuditPrice;
uint256 stor7;
mapping of uint8 stor99;

function getAuditState(uint256 arg1) {
    require auditState[arg1].field_1024 <= 7
    return auditState[arg1].field_1024
}

function getAuditRequestBlockNumber(uint256 arg1) {
    return uint256(auditState[arg1].field_768)
}

function minAuditPrice(address arg1) {
    return minAuditPrice[arg1]
}

function getAuditAuditor(uint256 arg1) {
    return address(auditState[arg1].field_1032)
}

function getAuditAssignBlockNumber(uint256 arg1) {
    return uint256(auditState[arg1].field_1280)
}

function getAuditRegistrar(uint256 arg1) {
    return address(auditState[arg1].field_2048)
}

function getAuditReportBlockNumber(uint256 arg1) {
    return uint256(auditState[arg1].field_1792)
}

function getAuditContractUri(uint256 arg1) {
    return uint256(auditState[arg1][1][0 len auditState[arg1][1].length].field_0)
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor[sha3(0, 0, 1)][address(arg1)])
}

function getAuditPrice(uint256 arg1) {
    return uint256(auditState[arg1].field_512)
}

function auditTimeoutInBlocks() {
    return auditTimeoutInBlocks
}

function getAuditRequestor(uint256 arg1) {
    return address(auditState[arg1].field_0)
}

function maxAssignedRequests() {
    return maxAssignedRequests
}

function token() {
    return tokenAddress
}

function getMinAuditPrice(address arg1) {
    return minAuditPrice[address(arg1)]
}

function _fallback() payable {
    revert
}

function setAuditTimeout(uint256 arg1) {
    require msg.sender == owner
    auditTimeoutInBlocks = arg1
}

function setMaxAssignedRequests(uint256 arg1) {
    require msg.sender == owner
    maxAssignedRequests = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setMinAuditPrice(address arg1, uint256 arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    minAuditPrice[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAuditAuditor(uint256 arg1, address arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    address(auditState[arg1].field_1032) = arg2
}

function setAuditRegistrar(uint256 arg1, address arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    address(auditState[arg1].field_2048) = arg2
}

function setAuditState(uint256 arg1, uint8 arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require arg2 <= 7
    auditState[arg1].field_1024 = arg2
}

function setAuditReportBlockNumber(uint256 arg1, uint256 arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    uint256(auditState[arg1].field_1792) = arg2
}

function setAuditAssignBlockNumber(uint256 arg1, uint256 arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    uint256(auditState[arg1].field_1280) = arg2
}

function setAuditReportHash(uint256 arg1, string arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    uint256(auditState[arg1][6][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    stor[sha3(0, 0, 1)][address(arg1)] = 1
    emit RoleAdded(address arg1, string arg2):
                   address(arg1),
                   64,
                   9,
                   0,
    emit WhitelistedAddressAdded(arg1);
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    stor[sha3(0, 0, 1)][address(arg1)] = 0
    emit RoleRemoved(address arg1, string arg2):
                     address(arg1),
                     64,
                     9,
                     0,
    emit WhitelistedAddressRemoved(arg1);
}

function approveWhitelisted(uint256 arg1) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function addAuditRequest(address arg1, string arg2, uint256 arg3) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    stor7++
    address(auditState[stor7 + 1].field_0) = arg1
    uint256(auditState[stor7 + 1][1][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(auditState[stor7 + 1].field_512) = arg3
    uint256(auditState[stor7 + 1].field_768) = block.number
    auditState[stor7 + 1].field_1024 = 1
    address(auditState[stor7 + 1].field_1032) = 0
    auditState[stor7 + 1].field_1280 % 1 = 0
    uint256(auditState[stor7 + 1].field_1280) = 0
    bool(auditState[stor7 + 1].field_1536) = 0
    uint255(auditState[stor7 + 1].field_1537) = 0
    Mask(248, 0, auditState[stor7 + 1].field_1544) = mem[ceil32(arg2.length) + 544 len 31]
    idx = 0
    while auditState[stor7 + 1][6].length + 31 / 32 > idx:
        uint256(auditState[stor7 + 1][idx + 6].field_0) = 0
        idx = idx + 1
        continue 
    uint256(auditState[stor7 + 1].field_1792) = 0
    address(auditState[stor7 + 1].field_2048) = msg.sender
    return (stor7 + 1)
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = 9
        mem[_30 + 32] = 0x77686974656c69737400000000000000000000000000000000000000000000
        t = _30 + 32
        u = mem[64]
        s = mem[_30]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_30])] = 256^(-(mem[_30] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_30])] or mem[_30 + floor32(mem[_30]) + 32] and !(256^(-(mem[_30] % 32) + 32) - 1)
        _55 = sha3(mem[mem[64] len 9], 1)
        mem[0] = address(_29)
        mem[32] = _55
        stor[_55][address(_29)] = 0
        _58 = mem[64]
        mem[mem[64]] = address(_29)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[_30]
        _60 = mem[_30]
        s = 0
        while s < _60:
            mem[s + mem[64] + 96] = mem[s + _30 + 32]
            s = s + 32
            continue 
        if not _60 % 32:
            emit RoleRemoved(address arg1, string arg2):
                             mem[mem[64] len _60 + _58 + -mem[64] + 96],
        else:
            mem[floor32(_60) + _58 + 96] = mem[floor32(_60) + _58 + -(_60 % 32) + 128 len _60 % 32]
            emit RoleRemoved(address arg1, string arg2):
                             mem[mem[64] len floor32(_60) + _58 + -mem[64] + 128],
        mem[mem[64]] = address(_29)
        emit WhitelistedAddressRemoved(address(_29));
        idx = idx + 1
        continue 
}

function addAddressesToWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _37 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _38 = mem[64]
        mem[64] = mem[64] + 64
        mem[_38] = 9
        mem[_38 + 32] = 0x77686974656c69737400000000000000000000000000000000000000000000
        t = _38 + 32
        u = mem[64]
        s = mem[_38]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_38])] = 256^(-(mem[_38] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_38])] or mem[_38 + floor32(mem[_38]) + 32] and !(256^(-(mem[_38] % 32) + 32) - 1)
        _71 = sha3(mem[mem[64] len 9], 1)
        mem[0] = address(_37)
        mem[32] = _71
        stor[_71][address(_37)] = 1
        mem[mem[64]] = address(_37)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[_38]
        _76 = mem[_38]
        if 0 >= mem[_38]:
            if not mem[_38] % 32:
                emit RoleAdded(address arg1, string arg2):
                               address(_37),
                               64,
                               mem[mem[64] + 64 len mem[_38] + 32],
            else:
                mem[floor32(mem[_38]) + mem[64] + 96] = mem[floor32(mem[_38]) + mem[64] + -(mem[_38] % 32) + 128 len mem[_38] % 32]
                emit RoleAdded(address arg1, string arg2):
                               address(_37),
                               64,
                               mem[mem[64] + 64 len floor32(_76) + 64],
        else:
            mem[mem[64] + 96] = mem[_38 + 32]
            s = 32
            while s < _76:
                mem[s + mem[64] + 96] = mem[s + _38 + 32]
                s = s + 32
                continue 
            if not _76 % 32:
                emit RoleAdded(address arg1, string arg2):
                               address(_37),
                               64,
                               mem[mem[64] + 64 len _76 + 32],
            else:
                mem[floor32(_76) + mem[64] + 96] = mem[floor32(_76) + mem[64] + -(_76 % 32) + 128 len _76 % 32]
                emit RoleAdded(address arg1, string arg2):
                               address(_37),
                               64,
                               mem[mem[64] + 64 len floor32(_76) + 64],
        mem[mem[64]] = address(_37)
        emit WhitelistedAddressAdded(address(_37));
        idx = idx + 1
        continue 
}

function audits(uint256 arg1) {
    mem[32] = 2
    mem[96] = auditState[arg1][1].length
    mem[128] = uint256(auditState[arg1][1].field_0)
    idx = 128
    s = 0
    while auditState[arg1][1].length + 96 > idx:
        mem[idx + 32] = uint256(auditState[arg1][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 160
    mem[ceil32(auditState[arg1][1].length) + 128] = auditState[arg1][6].length
    mem[0] = sha3(arg1, 2) + 6
    mem[ceil32(auditState[arg1][1].length) + 160] = uint256(auditState[arg1][6].field_0)
    idx = ceil32(auditState[arg1][1].length) + 160
    s = 0
    while ceil32(auditState[arg1][1].length) + auditState[arg1][6].length + 128 > idx:
        mem[idx + 32] = uint256(auditState[arg1][s + 6].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 160] = address(auditState[arg1].field_0)
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 224] = uint256(auditState[arg1].field_512)
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 256] = uint256(auditState[arg1].field_768)
    require auditState[arg1].field_1024 <= 7
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 288] = auditState[arg1].field_1024
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 320] = address(auditState[arg1].field_1032)
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 352] = uint256(auditState[arg1].field_1280)
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 416] = uint256(auditState[arg1].field_1792)
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 448] = address(auditState[arg1].field_2048)
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 192] = 320
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 480] = auditState[arg1][1].length
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 512 len ceil32(auditState[arg1][1].length)] = mem[128 len ceil32(auditState[arg1][1].length)]
    mem[ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 384] = auditState[arg1][1].length + 352
    mem[auditState[arg1][1].length + ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 512] = auditState[arg1][6].length
    mem[auditState[arg1][1].length + ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 544 len ceil32(auditState[arg1][6].length)] = mem[ceil32(auditState[arg1][1].length) + 160 len ceil32(auditState[arg1][6].length)]
    if not auditState[arg1][6].length % 32:
        return address(auditState[arg1].field_0), 
               Array(len=auditState[arg1][1].length, data=mem[128 len ceil32(auditState[arg1][1].length)], mem[(2 * ceil32(auditState[arg1][1].length)) + ceil32(auditState[arg1][6].length) + 512 len auditState[arg1][6].length + auditState[arg1][1].length + -ceil32(auditState[arg1][1].length) + 32]),
               uint256(auditState[arg1].field_512),
               uint256(auditState[arg1].field_768),
               auditState[arg1].field_1024,
               address(auditState[arg1].field_1024),
               uint256(auditState[arg1].field_1280),
               auditState[arg1][1].length + 352,
               uint256(auditState[arg1].field_1792),
               address(auditState[arg1].field_2048)
    mem[floor32(auditState[arg1][6].length) + auditState[arg1][1].length + ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + 544] = mem[floor32(auditState[arg1][6].length) + auditState[arg1][1].length + ceil32(auditState[arg1][1].length) + ceil32(auditState[arg1][6].length) + -auditState[arg1][6].length % 32 + 576 len auditState[arg1][6].length % 32]
    return address(auditState[arg1].field_0), 
           Array(len=auditState[arg1][1].length, data=mem[128 len ceil32(auditState[arg1][1].length)], mem[(2 * ceil32(auditState[arg1][1].length)) + ceil32(auditState[arg1][6].length) + 512 len floor32(auditState[arg1][6].length) + auditState[arg1][1].length + -ceil32(auditState[arg1][1].length) + 64]),
           uint256(auditState[arg1].field_512),
           uint256(auditState[arg1].field_768),
           auditState[arg1].field_1024,
           address(auditState[arg1].field_1024),
           uint256(auditState[arg1].field_1280),
           auditState[arg1][1].length + 352,
           uint256(auditState[arg1].field_1792),
           address(auditState[arg1].field_2048)
}



}
