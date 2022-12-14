# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from point_cloud_segmentation/RegionGrowingSegParamsRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RegionGrowingSegParamsRequest(genpy.Message):
  _md5sum = "fd9520a3184deb762b75616b536b765e"
  _type = "point_cloud_segmentation/RegionGrowingSegParamsRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 min_cluster_size
int32 max_cluster_size
int32 number_of_neighbors
float32 smoothness_threshold
float32 curvature_threshold
"""
  __slots__ = ['min_cluster_size','max_cluster_size','number_of_neighbors','smoothness_threshold','curvature_threshold']
  _slot_types = ['int32','int32','int32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       min_cluster_size,max_cluster_size,number_of_neighbors,smoothness_threshold,curvature_threshold

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RegionGrowingSegParamsRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.min_cluster_size is None:
        self.min_cluster_size = 0
      if self.max_cluster_size is None:
        self.max_cluster_size = 0
      if self.number_of_neighbors is None:
        self.number_of_neighbors = 0
      if self.smoothness_threshold is None:
        self.smoothness_threshold = 0.
      if self.curvature_threshold is None:
        self.curvature_threshold = 0.
    else:
      self.min_cluster_size = 0
      self.max_cluster_size = 0
      self.number_of_neighbors = 0
      self.smoothness_threshold = 0.
      self.curvature_threshold = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3i2f().pack(_x.min_cluster_size, _x.max_cluster_size, _x.number_of_neighbors, _x.smoothness_threshold, _x.curvature_threshold))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 20
      (_x.min_cluster_size, _x.max_cluster_size, _x.number_of_neighbors, _x.smoothness_threshold, _x.curvature_threshold,) = _get_struct_3i2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3i2f().pack(_x.min_cluster_size, _x.max_cluster_size, _x.number_of_neighbors, _x.smoothness_threshold, _x.curvature_threshold))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 20
      (_x.min_cluster_size, _x.max_cluster_size, _x.number_of_neighbors, _x.smoothness_threshold, _x.curvature_threshold,) = _get_struct_3i2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3i2f = None
def _get_struct_3i2f():
    global _struct_3i2f
    if _struct_3i2f is None:
        _struct_3i2f = struct.Struct("<3i2f")
    return _struct_3i2f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from point_cloud_segmentation/RegionGrowingSegParamsResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RegionGrowingSegParamsResponse(genpy.Message):
  _md5sum = "358e233cde0c8a8bcfea4ce193f8fc15"
  _type = "point_cloud_segmentation/RegionGrowingSegParamsResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool success

"""
  __slots__ = ['success']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       success

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RegionGrowingSegParamsResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = False
    else:
      self.success = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class RegionGrowingSegParams(object):
  _type          = 'point_cloud_segmentation/RegionGrowingSegParams'
  _md5sum = '38336d175b585d3b451f02cd0a82d0d1'
  _request_class  = RegionGrowingSegParamsRequest
  _response_class = RegionGrowingSegParamsResponse
