contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - elementsAreSet()
#
address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of struct name;
array of uint256 summary;
array of struct email;
array of uint256 address;
array of uint256 description;
array of uint256 title;
array of uint256 linkedIn;
array of uint256 twitter;
array of uint256 gitHub;

function getName() {
    return name[0 len name.length].field_0
}

function getDescription() {
    return description[0 len description.length]
}

function getAddress() {
    return address[0 len address.length]
}

function getSummary() {
    return summary[0 len summary.length]
}

function getGitHub() {
    return gitHub[0 len gitHub.length]
}

function getEmail() {
    return email[0 len email.length].field_0
}

function getLinkedIn() {
    return linkedIn[0 len linkedIn.length]
}

function getTwitter() {
    return twitter[0 len twitter.length]
}

function getTitle() {
    return title[0 len title.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function setTitle(string arg1) {
    if stor0 == msg.sender:
        title[] = Array(len=arg1.length, data=arg1[all])
}

function setGitHub(string arg1) {
    if stor0 == msg.sender:
        gitHub[] = Array(len=arg1.length, data=arg1[all])
}

function setAddress(string arg1) {
    if stor0 == msg.sender:
        address[] = Array(len=arg1.length, data=arg1[all])
}

function setSummary(string arg1) {
    if stor0 == msg.sender:
        summary[] = Array(len=arg1.length, data=arg1[all])
}

function setTwitter(string arg1) {
    if stor0 == msg.sender:
        twitter[] = Array(len=arg1.length, data=arg1[all])
}

function setName(string arg1) {
    if stor0 == msg.sender:
        name[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function setLinkedIn(string arg1) {
    if stor0 == msg.sender:
        linkedIn[] = Array(len=arg1.length, data=arg1[all])
}

function setEmail(string arg1) {
    if stor0 == msg.sender:
        email[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function setDescription(string arg1) {
    if stor0 == msg.sender:
        description[] = Array(len=arg1.length, data=arg1[all])
}

function addLanguage(string arg1) {
    if stor0 == msg.sender:
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            mem[0] = 3
            idx = stor3.length + 1
            while sha3(3) + stor3.length > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 >= stor[idx + sha3(mem[0])].length:
                    idx = idx + 1
                    continue 
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
        stor3[stor3.length][] = Array(len=arg1.length, data=arg1[all])
}

function addEducation(string arg1) {
    if stor0 == msg.sender:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            mem[0] = 2
            idx = stor2.length + 1
            while sha3(2) + stor2.length > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 >= stor[idx + sha3(mem[0])].length:
                    idx = idx + 1
                    continue 
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
        stor2[stor2.length][] = Array(len=arg1.length, data=arg1[all])
}

function addExperience(string arg1) {
    if stor0 == msg.sender:
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            mem[0] = 1
            idx = stor1.length + 1
            while sha3(1) + stor1.length > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 >= stor[idx + sha3(mem[0])].length:
                    idx = idx + 1
                    continue 
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
        stor1[stor1.length][] = Array(len=arg1.length, data=arg1[all])
}

function popLanguage() {
    if stor0 == msg.sender:
        if stor3.length >= 1:
            stor3.length--
            if not stor3.length <= stor3.length - 1:
                mem[0] = 3
                idx = stor3.length - 1
                while sha3(3) + stor3.length > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    if 31 >= stor[idx + sha3(mem[0])].length:
                        idx = idx + 1
                        continue 
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                        stor[s + sha3(mem[0])] = 0
                        s = s + 1
                        continue 
                    s = s + 1
                    continue 
}

function popEducation() {
    if stor0 == msg.sender:
        if stor2.length >= 1:
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                mem[0] = 2
                idx = stor2.length - 1
                while sha3(2) + stor2.length > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    if 31 >= stor[idx + sha3(mem[0])].length:
                        idx = idx + 1
                        continue 
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                        stor[s + sha3(mem[0])] = 0
                        s = s + 1
                        continue 
                    s = s + 1
                    continue 
}

function popExperience() {
    if stor0 == msg.sender:
        if stor1.length >= 1:
            stor1.length--
            if not stor1.length <= stor1.length - 1:
                mem[0] = 1
                idx = stor1.length - 1
                while sha3(1) + stor1.length > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    if 31 >= stor[idx + sha3(mem[0])].length:
                        idx = idx + 1
                        continue 
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                        stor[s + sha3(mem[0])] = 0
                        s = s + 1
                        continue 
                    s = s + 1
                    continue 
}

function getLanguage() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[64] = 256
    mem[224] = 0
    s = 160
    idx = 0
    t = 0
    while idx < stor3.length:
        mem[0] = 3
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[idx].length) + 32
        mem[_67] = stor3[idx].length
        mem[0] = idx + sha3(3)
        mem[_67 + 32] = stor3[idx]
        s = _67 + 32
        u = sha3(mem[0])
        while _67 + stor3[idx].length > s:
            mem[s + 32] = stor1[u]
            s = s + 32
            u = u + 1
            continue 
        s = _67
        idx = idx + 1
        t = t + mem[_67] + 1
        continue 
    _msize = max(0, _67 + 32, var23001 + 32)
    mem[_msize + 32] = t
    mem[64] = (_msize + 32) + (32 * t) + 32
    t = s
    t = 0
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        _124 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[idx].length) + 32
        mem[_124] = stor3[idx].length
        mem[0] = idx + sha3(3)
        mem[_124 + 32] = stor3[idx]
        s = _124 + 32
        u = sha3(mem[0])
        while _124 + stor3[idx].length > s:
            mem[s + 32] = stor1[u]
            s = s + 32
            u = u + 1
            continue 
        _210 = mem[_124]
        u = t
        s = 0
        while s < _210:
            require s < mem[_124]
            require u < mem[_msize + 32]
            mem[(_msize + 32) + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124'), ('var', 1)), 32))), 0) - 256
            u = u + 1
            s = s + 1
            continue 
        require t + _210 < mem[_msize + 32]
        mem[(_msize + 32) + t + _210 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'\n'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'\n'"), 0) - 256
        t = _124
        t = t + _210 + 1
        idx = idx + 1
        continue 
    _130 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_msize + 32]
    _132 = mem[_msize + 32]
    if not mem[max(0, _67 + 32, var23001 + 32) + 32]:
        if not mem[max(0, _67 + 32, var23001 + 32) + 32] % 32:
            return 32, mem[mem[64] + 32 len mem[_msize + 32] + 32]
        mem[floor32(mem[_msize + 32]) + mem[64] + 64] = mem[floor32(mem[_msize + 32]) + mem[64] + -(mem[_msize + 32] % 32) + 96 len mem[_msize + 32] % 32]
        return 32, mem[mem[64] + 32 len floor32(_132) + 64]
    mem[mem[64] + 64] = mem[(_msize + 32) + 32]
    mem[mem[64] + 96 len floor32(_132 - 1)] = mem[(_msize + 32) + 64 len floor32(_132 - 1)]
    if not _132 % 32:
        return 32, mem[mem[64] + 32 len _132 + 32]
    mem[floor32(_132) + mem[64] + 64] = mem[floor32(_132) + mem[64] + -(_132 % 32) + 96 len _132 % 32]
    return memory
      from mem[64]
       len floor32(_132) + _130 + -mem[64] + 96
}

function getEducation() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[64] = 256
    mem[224] = 0
    s = 160
    idx = 0
    t = 0
    while idx < stor2.length:
        mem[0] = 2
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].length) + 32
        mem[_67] = stor2[idx].length
        mem[0] = idx + sha3(2)
        mem[_67 + 32] = stor2[idx]
        s = _67 + 32
        u = sha3(mem[0])
        while _67 + stor2[idx].length > s:
            mem[s + 32] = stor1[u]
            s = s + 32
            u = u + 1
            continue 
        s = _67
        idx = idx + 1
        t = t + mem[_67] + 1
        continue 
    _msize = max(0, _67 + 32, var23001 + 32)
    mem[_msize + 32] = t
    mem[64] = (_msize + 32) + (32 * t) + 32
    t = s
    t = 0
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _124 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].length) + 32
        mem[_124] = stor2[idx].length
        mem[0] = idx + sha3(2)
        mem[_124 + 32] = stor2[idx]
        s = _124 + 32
        u = sha3(mem[0])
        while _124 + stor2[idx].length > s:
            mem[s + 32] = stor1[u]
            s = s + 32
            u = u + 1
            continue 
        _210 = mem[_124]
        u = t
        s = 0
        while s < _210:
            require s < mem[_124]
            require u < mem[_msize + 32]
            mem[(_msize + 32) + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124'), ('var', 1)), 32))), 0) - 256
            u = u + 1
            s = s + 1
            continue 
        require t + _210 < mem[_msize + 32]
        mem[(_msize + 32) + t + _210 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'\n'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'\n'"), 0) - 256
        t = _124
        t = t + _210 + 1
        idx = idx + 1
        continue 
    _130 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_msize + 32]
    _132 = mem[_msize + 32]
    if not mem[max(0, _67 + 32, var23001 + 32) + 32]:
        if not mem[max(0, _67 + 32, var23001 + 32) + 32] % 32:
            return 32, mem[mem[64] + 32 len mem[_msize + 32] + 32]
        mem[floor32(mem[_msize + 32]) + mem[64] + 64] = mem[floor32(mem[_msize + 32]) + mem[64] + -(mem[_msize + 32] % 32) + 96 len mem[_msize + 32] % 32]
        return 32, mem[mem[64] + 32 len floor32(_132) + 64]
    mem[mem[64] + 64] = mem[(_msize + 32) + 32]
    mem[mem[64] + 96 len floor32(_132 - 1)] = mem[(_msize + 32) + 64 len floor32(_132 - 1)]
    if not _132 % 32:
        return 32, mem[mem[64] + 32 len _132 + 32]
    mem[floor32(_132) + mem[64] + 64] = mem[floor32(_132) + mem[64] + -(_132 % 32) + 96 len _132 % 32]
    return memory
      from mem[64]
       len floor32(_132) + _130 + -mem[64] + 96
}

function getExperience() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[64] = 256
    mem[224] = 0
    s = 160
    idx = 0
    t = 0
    while idx < stor1.length:
        mem[0] = 1
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(stor1[idx].length) + 32
        mem[_67] = stor1[idx].length
        mem[0] = idx + sha3(1)
        mem[_67 + 32] = stor1[idx]
        s = _67 + 32
        u = sha3(mem[0])
        while _67 + stor1[idx].length > s:
            mem[s + 32] = stor1[u]
            s = s + 32
            u = u + 1
            continue 
        s = _67
        idx = idx + 1
        t = t + mem[_67] + 1
        continue 
    _msize = max(0, _67 + 32, var23001 + 32)
    mem[_msize + 32] = t
    mem[64] = (_msize + 32) + (32 * t) + 32
    t = s
    t = 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        _124 = mem[64]
        mem[64] = mem[64] + ceil32(stor1[idx].length) + 32
        mem[_124] = stor1[idx].length
        mem[0] = idx + sha3(1)
        mem[_124 + 32] = stor1[idx]
        s = _124 + 32
        u = sha3(mem[0])
        while _124 + stor1[idx].length > s:
            mem[s + 32] = stor1[u]
            s = s + 32
            u = u + 1
            continue 
        _210 = mem[_124]
        u = t
        s = 0
        while s < _210:
            require s < mem[_124]
            require u < mem[_msize + 32]
            mem[(_msize + 32) + u + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_124'), ('var', 1)), 32))), 0) - 256
            u = u + 1
            s = s + 1
            continue 
        require t + _210 < mem[_msize + 32]
        mem[(_msize + 32) + t + _210 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'\n'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'\n'"), 0) - 256
        t = _124
        t = t + _210 + 1
        idx = idx + 1
        continue 
    _130 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_msize + 32]
    _132 = mem[_msize + 32]
    if not mem[max(0, _67 + 32, var23001 + 32) + 32]:
        if not mem[max(0, _67 + 32, var23001 + 32) + 32] % 32:
            return 32, mem[mem[64] + 32 len mem[_msize + 32] + 32]
        mem[floor32(mem[_msize + 32]) + mem[64] + 64] = mem[floor32(mem[_msize + 32]) + mem[64] + -(mem[_msize + 32] % 32) + 96 len mem[_msize + 32] % 32]
        return 32, mem[mem[64] + 32 len floor32(_132) + 64]
    mem[mem[64] + 64] = mem[(_msize + 32) + 32]
    mem[mem[64] + 96 len floor32(_132 - 1)] = mem[(_msize + 32) + 64 len floor32(_132 - 1)]
    if not _132 % 32:
        return 32, mem[mem[64] + 32 len _132 + 32]
    mem[floor32(_132) + mem[64] + 64] = mem[floor32(_132) + mem[64] + -(_132 % 32) + 96 len _132 % 32]
    return memory
      from mem[64]
       len floor32(_132) + _130 + -mem[64] + 96
}

function getAuthor() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = name.length
    mem[192] = uint256(name.field_0)
    idx = 192
    s = 0
    while name.length + 160 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(name.length) + ceil32(email.length) + 224
    mem[ceil32(name.length) + 192] = email.length
    mem[0] = 6
    mem[ceil32(name.length) + 224] = uint256(email.field_0)
    idx = ceil32(name.length) + 224
    s = 0
    while ceil32(name.length) + email.length + 192 > idx:
        mem[idx + 32] = email[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(name.length) + ceil32(email.length) + 224] = 64
    mem[ceil32(name.length) + ceil32(email.length) + 288] = name.length
    if not name.length:
        mem[ceil32(name.length) + ceil32(email.length) + 256] = name.length + 96
        mem[name.length + ceil32(name.length) + ceil32(email.length) + 320] = email.length
        if not email.length:
            if not email.length % 32:
                return Array(len=name.length, data=mem[ceil32(name.length) + ceil32(email.length) + 320 len email.length + name.length + 32]), 
                       name.length + 96
            mem[floor32(email.length) + name.length + ceil32(name.length) + ceil32(email.length) + 352] = mem[floor32(email.length) + name.length + ceil32(name.length) + ceil32(email.length) + -email.length % 32 + 384 len email.length % 32]
            return Array(len=name.length, data=mem[ceil32(name.length) + ceil32(email.length) + 320 len floor32(email.length) + name.length + 64]), 
                   name.length + 96
        mem[name.length + ceil32(name.length) + ceil32(email.length) + 352] = mem[ceil32(name.length) + 224]
        mem[name.length + ceil32(name.length) + ceil32(email.length) + 384 len floor32(email.length - 1)] = mem[ceil32(name.length) + 256 len floor32(email.length - 1)]
        if not email.length % 32:
            return Array(len=name.length, data=mem[ceil32(name.length) + ceil32(email.length) + 320 len email.length + name.length + 32]), 
                   name.length + 96
        mem[floor32(email.length) + name.length + ceil32(name.length) + ceil32(email.length) + 352] = mem[floor32(email.length) + name.length + ceil32(name.length) + ceil32(email.length) + -email.length % 32 + 384 len email.length % 32]
        return Array(len=name.length, data=mem[ceil32(name.length) + ceil32(email.length) + 320 len name.length + 32], mem[ceil32(name.length) + 224], mem[ceil32(name.length) + ceil32(email.length) + name.length + 384 len floor32(email.length)]), 
               name.length + 96
    mem[ceil32(name.length) + ceil32(email.length) + 320] = mem[192]
    mem[ceil32(name.length) + ceil32(email.length) + 352 len floor32(name.length - 1)] = mem[224 len floor32(name.length - 1)]
    mem[ceil32(name.length) + ceil32(email.length) + 256] = name.length + 96
    mem[name.length + ceil32(name.length) + ceil32(email.length) + 320] = email.length
    if email.length:
        mem[name.length + ceil32(name.length) + ceil32(email.length) + 352] = mem[ceil32(name.length) + 224]
        mem[name.length + ceil32(name.length) + ceil32(email.length) + 384 len floor32(email.length - 1)] = mem[ceil32(name.length) + 256 len floor32(email.length - 1)]
    if not email.length % 32:
        return Array(len=name.length, data=mem[192], mem[ceil32(name.length) + ceil32(email.length) + 352 len email.length + name.length]), 
               name.length + 96
    mem[floor32(email.length) + name.length + ceil32(name.length) + ceil32(email.length) + 352] = mem[floor32(email.length) + name.length + ceil32(name.length) + ceil32(email.length) + -email.length % 32 + 384 len email.length % 32]
    return Array(len=name.length, data=mem[192], mem[ceil32(name.length) + ceil32(email.length) + 352 len floor32(email.length) + name.length + 32]), 
           name.length + 96
}



}
