// Generated by gencpp from file sensor/Motor.msg
// DO NOT EDIT!


#ifndef SENSOR_MESSAGE_MOTOR_H
#define SENSOR_MESSAGE_MOTOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sensor
{
template <class ContainerAllocator>
struct Motor_
{
  typedef Motor_<ContainerAllocator> Type;

  Motor_()
    : index(0)
    , speed(0)  {
    }
  Motor_(const ContainerAllocator& _alloc)
    : index(0)
    , speed(0)  {
  (void)_alloc;
    }



   typedef uint8_t _index_type;
  _index_type index;

   typedef int8_t _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::sensor::Motor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor::Motor_<ContainerAllocator> const> ConstPtr;

}; // struct Motor_

typedef ::sensor::Motor_<std::allocator<void> > Motor;

typedef boost::shared_ptr< ::sensor::Motor > MotorPtr;
typedef boost::shared_ptr< ::sensor::Motor const> MotorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor::Motor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor::Motor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sensor::Motor_<ContainerAllocator1> & lhs, const ::sensor::Motor_<ContainerAllocator2> & rhs)
{
  return lhs.index == rhs.index &&
    lhs.speed == rhs.speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sensor::Motor_<ContainerAllocator1> & lhs, const ::sensor::Motor_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sensor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sensor::Motor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor::Motor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor::Motor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor::Motor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor::Motor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor::Motor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor::Motor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6631b649aaef98f52c932c2b9322446d";
  }

  static const char* value(const ::sensor::Motor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6631b649aaef98f5ULL;
  static const uint64_t static_value2 = 0x2c932c2b9322446dULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor::Motor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor/Motor";
  }

  static const char* value(const ::sensor::Motor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor::Motor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 index\n"
"int8 speed\n"
;
  }

  static const char* value(const ::sensor::Motor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor::Motor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.index);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Motor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor::Motor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensor::Motor_<ContainerAllocator>& v)
  {
    s << indent << "index: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.index);
    s << indent << "speed: ";
    Printer<int8_t>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_MESSAGE_MOTOR_H
